-- NEVOBRAIT SECRET ARCHIVE DUMP
-- DATE: 2026-10-27
-- STATUS: CORRUPTED

CREATE TABLE entities (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    threat_level VARCHAR(50),
    description TEXT
);

INSERT INTO entities (id, name, threat_level, description) VALUES
(1, 'Adkinator', 'EXTREME', 'Digital cryptid. Active since 2016. Domains: adkinator666.xyz'),
(2, 'Dark Wave', 'UNKNOWN', 'Cyclic anomaly. Peaks: 2006, 2011, 2018-2019.'),
(3, 'Midnight Man', 'EXTREME', 'Entity born from Dark Wave. Do not look out the window.'),
(4, 'Silent House', 'HIGH', 'Cryptid incubator. Location unknown.');

-- WARNING: SOME DATA IS MISSING OR CORRUPTED
-- [ERROR] Row 5-12: ACCESS DENIED
