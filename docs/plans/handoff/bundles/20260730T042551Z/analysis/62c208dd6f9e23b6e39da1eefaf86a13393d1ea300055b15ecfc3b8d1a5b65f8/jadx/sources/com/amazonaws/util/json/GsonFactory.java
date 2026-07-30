package com.amazonaws.util.json;

import com.facebook.internal.ServerProtocol;
import defpackage.C3529pp;
import defpackage.C3705sp;
import defpackage.C4122zt;
import defpackage.Creturn;
import java.io.Reader;
import java.io.Writer;

/* loaded from: classes.dex */
final class GsonFactory implements AwsJsonFactory {

    public static final class GsonReader implements AwsJsonReader {

        /* renamed from: do, reason: not valid java name */
        public final C3529pp f9094do;

        public GsonReader(Reader reader) {
            this.f9094do = new C3529pp(reader);
        }

        @Override // com.amazonaws.util.json.AwsJsonReader
        public final void close() {
            this.f9094do.close();
        }

        @Override // com.amazonaws.util.json.AwsJsonReader
        /* renamed from: do */
        public final String mo5203do() {
            String m7813this;
            C3529pp c3529pp = this.f9094do;
            int i = c3529pp.f14988else;
            if (i == 0) {
                i = c3529pp.m7809if();
            }
            if (i == 14) {
                m7813this = c3529pp.m7802break();
            } else if (i == 12) {
                m7813this = c3529pp.m7813this('\'');
            } else {
                if (i != 13) {
                    throw new IllegalStateException("Expected a name but was " + Creturn.m7974break(c3529pp.m7804class()) + " at line " + (c3529pp.f14993try + 1) + " column " + c3529pp.m7810new());
                }
                m7813this = c3529pp.m7813this('\"');
            }
            c3529pp.f14988else = 0;
            return m7813this;
        }

        @Override // com.amazonaws.util.json.AwsJsonReader
        /* renamed from: for */
        public final String mo5204for() {
            C3529pp c3529pp = this.f9094do;
            int m7804class = c3529pp.m7804class();
            String str = null;
            boolean z = false;
            if (C4122zt.m8822do(9, m7804class)) {
                int i = c3529pp.f14988else;
                if (i == 0) {
                    i = c3529pp.m7809if();
                }
                if (i == 7) {
                    c3529pp.f14988else = 0;
                    return null;
                }
                throw new IllegalStateException("Expected null but was " + Creturn.m7974break(c3529pp.m7804class()) + " at line " + (c3529pp.f14993try + 1) + " column " + c3529pp.m7810new());
            }
            if (C4122zt.m8822do(8, m7804class)) {
                int i2 = c3529pp.f14988else;
                if (i2 == 0) {
                    i2 = c3529pp.m7809if();
                }
                if (i2 == 5) {
                    c3529pp.f14988else = 0;
                    z = true;
                } else {
                    if (i2 != 6) {
                        throw new IllegalStateException("Expected a boolean but was " + Creturn.m7974break(c3529pp.m7804class()) + " at line " + (c3529pp.f14993try + 1) + " column " + c3529pp.m7810new());
                    }
                    c3529pp.f14988else = 0;
                }
                return z ? ServerProtocol.DIALOG_RETURN_SCOPES_TRUE : "false";
            }
            int i3 = c3529pp.f14988else;
            if (i3 == 0) {
                i3 = c3529pp.m7809if();
            }
            if (i3 == 10) {
                str = c3529pp.m7802break();
            } else if (i3 == 8) {
                str = c3529pp.m7813this('\'');
            } else if (i3 == 9) {
                str = c3529pp.m7813this('\"');
            } else if (i3 != 11) {
                if (i3 == 15) {
                    str = Long.toString(c3529pp.f14984do);
                } else {
                    if (i3 != 16) {
                        throw new IllegalStateException("Expected a string but was " + Creturn.m7974break(c3529pp.m7804class()) + " at line " + (c3529pp.f14993try + 1) + " column " + c3529pp.m7810new());
                    }
                    str = new String(c3529pp.f14986do, c3529pp.f14989for, c3529pp.f14990goto);
                    c3529pp.f14989for += c3529pp.f14990goto;
                }
            }
            c3529pp.f14988else = 0;
            return str;
        }

        @Override // com.amazonaws.util.json.AwsJsonReader
        public final boolean hasNext() {
            C3529pp c3529pp = this.f9094do;
            int i = c3529pp.f14988else;
            if (i == 0) {
                i = c3529pp.m7809if();
            }
            return (i == 2 || i == 4) ? false : true;
        }

        @Override // com.amazonaws.util.json.AwsJsonReader
        /* renamed from: if */
        public final void mo5205if() {
            C3529pp c3529pp = this.f9094do;
            int i = c3529pp.f14988else;
            if (i == 0) {
                i = c3529pp.m7809if();
            }
            if (i == 2) {
                c3529pp.f14992this--;
                c3529pp.f14988else = 0;
                return;
            }
            throw new IllegalStateException("Expected END_OBJECT but was " + Creturn.m7974break(c3529pp.m7804class()) + " at line " + (c3529pp.f14993try + 1) + " column " + c3529pp.m7810new());
        }

        @Override // com.amazonaws.util.json.AwsJsonReader
        /* renamed from: new */
        public final void mo5206new() {
            int i = 0;
            do {
                C3529pp c3529pp = this.f9094do;
                int i2 = c3529pp.f14988else;
                if (i2 == 0) {
                    i2 = c3529pp.m7809if();
                }
                if (i2 == 3) {
                    c3529pp.m7805const(1);
                } else if (i2 == 1) {
                    c3529pp.m7805const(3);
                } else {
                    if (i2 == 4) {
                        c3529pp.f14992this--;
                    } else if (i2 == 2) {
                        c3529pp.f14992this--;
                    } else {
                        if (i2 == 14 || i2 == 10) {
                            do {
                                int i3 = 0;
                                while (true) {
                                    int i4 = c3529pp.f14989for + i3;
                                    if (i4 < c3529pp.f14991new) {
                                        char c = c3529pp.f14986do[i4];
                                        if (c != '\t' && c != '\n' && c != '\f' && c != '\r' && c != ' ') {
                                            if (c != '#') {
                                                if (c != ',') {
                                                    if (c != '/' && c != '=') {
                                                        if (c != '{' && c != '}' && c != ':') {
                                                            if (c != ';') {
                                                                switch (c) {
                                                                    case '[':
                                                                    case ']':
                                                                        break;
                                                                    case '\\':
                                                                        break;
                                                                    default:
                                                                        i3++;
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    } else {
                                        c3529pp.f14989for = i4;
                                    }
                                }
                                c3529pp.m7806do();
                                throw null;
                            } while (c3529pp.m7807for(1));
                        }
                        if (i2 == 8 || i2 == 12) {
                            c3529pp.m7812return('\'');
                        } else if (i2 == 9 || i2 == 13) {
                            c3529pp.m7812return('\"');
                        } else if (i2 == 16) {
                            c3529pp.f14989for += c3529pp.f14990goto;
                        }
                        c3529pp.f14988else = 0;
                    }
                    i--;
                    c3529pp.f14988else = 0;
                }
                i++;
                c3529pp.f14988else = 0;
            } while (i != 0);
        }

        @Override // com.amazonaws.util.json.AwsJsonReader
        /* renamed from: try */
        public final void mo5207try() {
            C3529pp c3529pp = this.f9094do;
            int i = c3529pp.f14988else;
            if (i == 0) {
                i = c3529pp.m7809if();
            }
            if (i == 1) {
                c3529pp.m7805const(3);
                c3529pp.f14988else = 0;
                return;
            }
            throw new IllegalStateException("Expected BEGIN_OBJECT but was " + Creturn.m7974break(c3529pp.m7804class()) + " at line " + (c3529pp.f14993try + 1) + " column " + c3529pp.m7810new());
        }
    }

    public static final class GsonWriter implements AwsJsonWriter {

        /* renamed from: do, reason: not valid java name */
        public final C3705sp f9095do;

        public GsonWriter(Writer writer) {
            this.f9095do = new C3705sp(writer);
        }

        @Override // com.amazonaws.util.json.AwsJsonWriter
        /* renamed from: case */
        public final AwsJsonWriter mo5208case() {
            this.f9095do.m8142if(3, 5, "}");
            return this;
        }

        @Override // com.amazonaws.util.json.AwsJsonWriter
        public final void close() {
            this.f9095do.close();
        }

        @Override // com.amazonaws.util.json.AwsJsonWriter
        /* renamed from: do */
        public final AwsJsonWriter mo5209do() {
            C3705sp c3705sp = this.f9095do;
            c3705sp.m8139case();
            c3705sp.m8140do(true);
            int i = c3705sp.f15522for;
            int[] iArr = c3705sp.f15521do;
            if (i == iArr.length) {
                int[] iArr2 = new int[i * 2];
                System.arraycopy(iArr, 0, iArr2, 0, i);
                c3705sp.f15521do = iArr2;
            }
            int[] iArr3 = c3705sp.f15521do;
            int i2 = c3705sp.f15522for;
            c3705sp.f15522for = i2 + 1;
            iArr3[i2] = 1;
            c3705sp.f15519do.write("[");
            return this;
        }

        @Override // com.amazonaws.util.json.AwsJsonWriter
        /* renamed from: else */
        public final AwsJsonWriter mo5210else() {
            this.f9095do.m8142if(1, 2, "]");
            return this;
        }

        @Override // com.amazonaws.util.json.AwsJsonWriter
        public final void flush() {
            this.f9095do.flush();
        }

        @Override // com.amazonaws.util.json.AwsJsonWriter
        /* renamed from: for */
        public final AwsJsonWriter mo5211for(String str) {
            C3705sp c3705sp = this.f9095do;
            if (str == null) {
                c3705sp.getClass();
                throw new NullPointerException("name == null");
            }
            if (c3705sp.f15518catch != null) {
                throw new IllegalStateException();
            }
            if (c3705sp.f15522for == 0) {
                throw new IllegalStateException("JsonWriter is closed.");
            }
            c3705sp.f15518catch = str;
            return this;
        }

        @Override // com.amazonaws.util.json.AwsJsonWriter
        /* renamed from: if */
        public final AwsJsonWriter mo5212if(Number number) {
            C3705sp c3705sp = this.f9095do;
            if (number == null) {
                if (c3705sp.f15518catch != null) {
                    if (c3705sp.f15520do) {
                        c3705sp.m8139case();
                    } else {
                        c3705sp.f15518catch = null;
                    }
                }
                c3705sp.m8140do(false);
                c3705sp.f15519do.write("null");
            } else {
                c3705sp.m8139case();
                String obj = number.toString();
                if (obj.equals("-Infinity") || obj.equals("Infinity") || obj.equals("NaN")) {
                    throw new IllegalArgumentException("Numeric values must be finite, but was " + number);
                }
                c3705sp.m8140do(false);
                c3705sp.f15519do.append((CharSequence) obj);
            }
            return this;
        }

        @Override // com.amazonaws.util.json.AwsJsonWriter
        /* renamed from: new */
        public final AwsJsonWriter mo5213new() {
            C3705sp c3705sp = this.f9095do;
            c3705sp.m8139case();
            c3705sp.m8140do(true);
            int i = c3705sp.f15522for;
            int[] iArr = c3705sp.f15521do;
            if (i == iArr.length) {
                int[] iArr2 = new int[i * 2];
                System.arraycopy(iArr, 0, iArr2, 0, i);
                c3705sp.f15521do = iArr2;
            }
            int[] iArr3 = c3705sp.f15521do;
            int i2 = c3705sp.f15522for;
            c3705sp.f15522for = i2 + 1;
            iArr3[i2] = 3;
            c3705sp.f15519do.write("{");
            return this;
        }

        @Override // com.amazonaws.util.json.AwsJsonWriter
        /* renamed from: try */
        public final AwsJsonWriter mo5214try(String str) {
            C3705sp c3705sp = this.f9095do;
            if (str == null) {
                if (c3705sp.f15518catch != null) {
                    if (c3705sp.f15520do) {
                        c3705sp.m8139case();
                    } else {
                        c3705sp.f15518catch = null;
                    }
                }
                c3705sp.m8140do(false);
                c3705sp.f15519do.write("null");
            } else {
                c3705sp.m8139case();
                c3705sp.m8140do(false);
                c3705sp.m8143new(str);
            }
            return this;
        }
    }
}
