package defpackage;

import java.nio.charset.StandardCharsets;

/* renamed from: bg, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C0764bg {

    /* renamed from: do, reason: not valid java name */
    public int f8429do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public C3144jG f8430do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final String f8431do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public final StringBuilder f8432do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public EnumC3203kG f8433do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public C3635re f8434do;

    /* renamed from: for, reason: not valid java name */
    public int f8435for;

    /* renamed from: if, reason: not valid java name */
    public int f8436if;

    /* renamed from: if, reason: not valid java name and collision with other field name */
    public C3635re f8437if;

    public C0764bg(String str) {
        byte[] bytes = str.getBytes(StandardCharsets.ISO_8859_1);
        StringBuilder sb = new StringBuilder(bytes.length);
        int length = bytes.length;
        for (int i = 0; i < length; i++) {
            char c = (char) (bytes[i] & 255);
            if (c == '?' && str.charAt(i) != '?') {
                throw new IllegalArgumentException("Message contains characters outside ISO-8859-1 encoding.");
            }
            sb.append(c);
        }
        this.f8431do = sb.toString();
        this.f8433do = EnumC3203kG.FORCE_NONE;
        this.f8432do = new StringBuilder(str.length());
        this.f8436if = -1;
    }

    /* renamed from: do, reason: not valid java name */
    public final int m4848do() {
        return this.f8432do.length();
    }

    /* renamed from: for, reason: not valid java name */
    public final boolean m4849for() {
        return this.f8429do < this.f8431do.length() - this.f8435for;
    }

    /* renamed from: if, reason: not valid java name */
    public final char m4850if() {
        return this.f8431do.charAt(this.f8429do);
    }

    /* renamed from: new, reason: not valid java name */
    public final void m4851new(int i) {
        C3144jG c3144jG = this.f8430do;
        if (c3144jG == null || i > c3144jG.f13663do) {
            this.f8430do = C3144jG.m7048case(i, this.f8433do, this.f8434do, this.f8437if);
        }
    }

    /* renamed from: try, reason: not valid java name */
    public final void m4852try(char c) {
        this.f8432do.append(c);
    }
}
