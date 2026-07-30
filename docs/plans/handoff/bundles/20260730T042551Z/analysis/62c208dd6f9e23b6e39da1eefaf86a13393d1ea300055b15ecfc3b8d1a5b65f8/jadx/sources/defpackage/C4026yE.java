package defpackage;

import java.util.ArrayList;
import java.util.List;

@Deprecated
/* renamed from: yE, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C4026yE {

    /* renamed from: do, reason: not valid java name */
    public String f16721do;

    /* renamed from: do, reason: not valid java name and collision with other field name */
    public List f16722do;

    /* renamed from: yE$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: do, reason: not valid java name */
        public String f16723do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public ArrayList f16724do;

        /* renamed from: do, reason: not valid java name */
        public final C4026yE m8706do() {
            String str = this.f16723do;
            if (str == null) {
                throw new IllegalArgumentException("SKU type must be set");
            }
            ArrayList arrayList = this.f16724do;
            if (arrayList == null) {
                throw new IllegalArgumentException("SKU list must be set");
            }
            C4026yE c4026yE = new C4026yE();
            c4026yE.f16721do = str;
            c4026yE.f16722do = arrayList;
            return c4026yE;
        }
    }
}
