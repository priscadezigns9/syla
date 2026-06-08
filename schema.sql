-- Syla Supabase Schema

-- Medications table
CREATE TABLE medications (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    user_id UUID REFERENCES auth.users(id),
    name TEXT NOT NULL,
    dosage TEXT,
    schedule_time TIME NOT NULL,
    is_active BOOLEAN DEFAULT true,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Family Contacts table
CREATE TABLE family_contacts (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    user_id UUID REFERENCES auth.users(id),
    name TEXT NOT NULL,
    phone TEXT NOT NULL,
    relationship TEXT,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Scam Checks table
CREATE TABLE scam_checks (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    user_id UUID REFERENCES auth.users(id),
    input_text TEXT NOT NULL,
    ai_verdict TEXT,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Enable RLS
ALTER TABLE medications ENABLE ROW LEVEL SECURITY;
ALTER TABLE family_contacts ENABLE ROW LEVEL SECURITY;
ALTER TABLE scam_checks ENABLE ROW LEVEL SECURITY;

-- Create policies (simplified for demo/development)
CREATE POLICY "Users can manage their own medications" ON medications FOR ALL USING (auth.uid() = user_id);
CREATE POLICY "Users can manage their own family contacts" ON family_contacts FOR ALL USING (auth.uid() = user_id);
CREATE POLICY "Users can manage their own scam checks" ON scam_checks FOR ALL USING (auth.uid() = user_id);
