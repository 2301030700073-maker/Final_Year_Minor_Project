package defpackage;

import android.util.SparseArray;
import com.google.auto.value.AutoValue;

@AutoValue
/* loaded from: classes.dex */
public abstract class Z8 {

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v0 Z8$do, still in use, count: 1, list:
      (r0v0 Z8$do) from 0x0020: INVOKE (r3v3 android.util.SparseArray), (0 int), (r0v0 Z8$do) VIRTUAL call: android.util.SparseArray.put(int, java.lang.Object):void A[MD:(int, E):void (c)] (LINE:33)
    	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:162)
    	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:127)
    	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:99)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
    	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:98)
    	at jadx.core.utils.InsnRemover.removeAllAndUnbind(InsnRemover.java:252)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:180)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* renamed from: Z8$do, reason: invalid class name */
    public static final class Cdo {
        /* JADX INFO: Fake field, exist only in values array */
        NOT_SET,
        EVENT_OVERRIDE;

        static {
            Cdo cdo = EVENT_OVERRIDE;
            SparseArray sparseArray = new SparseArray();
            sparseArray.put(0, r0);
            sparseArray.put(5, cdo);
        }

        public Cdo() {
        }

        public static Cdo valueOf(String str) {
            return (Cdo) Enum.valueOf(Cdo.class, str);
        }

        public static Cdo[] values() {
            return (Cdo[]) f4786do.clone();
        }
    }

    /* renamed from: do, reason: not valid java name */
    public abstract AbstractC2764fh mo2977do();

    /* renamed from: if, reason: not valid java name */
    public abstract Cdo mo2978if();
}
