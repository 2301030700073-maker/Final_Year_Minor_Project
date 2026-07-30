package defpackage;

import android.content.Intent;

/* loaded from: classes.dex */
public interface B6 {

    /* renamed from: B6$do, reason: invalid class name */
    public static final class Cdo {

        /* renamed from: do, reason: not valid java name */
        public final int f203do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final Intent f204do;

        /* renamed from: if, reason: not valid java name */
        public final int f205if;

        public Cdo(int i, int i2, Intent intent) {
            this.f203do = i;
            this.f205if = i2;
            this.f204do = intent;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Cdo)) {
                return false;
            }
            Cdo cdo = (Cdo) obj;
            return this.f203do == cdo.f203do && this.f205if == cdo.f205if && C0173Do.m394do(this.f204do, cdo.f204do);
        }

        public final int hashCode() {
            int i = ((this.f203do * 31) + this.f205if) * 31;
            Intent intent = this.f204do;
            return i + (intent == null ? 0 : intent.hashCode());
        }

        public final String toString() {
            return "ActivityResultParameters(requestCode=" + this.f203do + ", resultCode=" + this.f205if + ", data=" + this.f204do + ')';
        }
    }

    boolean onActivityResult(int i, int i2, Intent intent);
}
