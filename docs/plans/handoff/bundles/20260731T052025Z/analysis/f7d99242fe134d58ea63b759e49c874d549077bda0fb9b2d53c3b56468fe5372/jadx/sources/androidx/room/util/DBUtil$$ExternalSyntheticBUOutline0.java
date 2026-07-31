package androidx.room.util;

import androidx.transition.Transition;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class DBUtil$$ExternalSyntheticBUOutline0 implements Transition.TransitionNotification {
    public final /* synthetic */ int $r8$classId;

    public /* synthetic */ DBUtil$$ExternalSyntheticBUOutline0(int i) {
        this.$r8$classId = i;
    }

    public static /* synthetic */ void m(String str, Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
        throw new IllegalArgumentException((str + obj + obj2 + obj3 + obj4 + obj5).toString());
    }

    public static /* synthetic */ void m$1(String str, Object obj, Object obj2, Object obj3) {
        throw new IllegalStateException((str + obj + obj2 + obj3).toString());
    }

    @Override // androidx.transition.Transition.TransitionNotification
    public void notifyListener(Transition.TransitionListener transitionListener, Transition transition, boolean z) {
        switch (this.$r8$classId) {
            case 20:
                transitionListener.onTransitionStart$1(transition);
                break;
            case 21:
                transitionListener.onTransitionEnd$1(transition);
                break;
            case 22:
                transitionListener.onTransitionCancel(transition);
                break;
            case 23:
                transitionListener.onTransitionPause();
                break;
            default:
                transitionListener.onTransitionResume();
                break;
        }
    }

    public static /* synthetic */ void m$1(Object obj, Object obj2, String str) {
        throw new IllegalStateException(str + obj + obj2);
    }

    public static /* synthetic */ void m$1(Object obj, String str) {
        throw new IllegalArgumentException(str + obj);
    }

    public static /* synthetic */ void m() {
        throw new ClassCastException();
    }

    public static /* synthetic */ void m(int i, Object obj, String str) {
        throw new IllegalStateException((str + i + obj).toString());
    }

    public static /* synthetic */ void m(Object obj, Object obj2) {
        StringBuilder sb = new StringBuilder();
        sb.append(obj);
        sb.append(obj2);
        throw new IllegalArgumentException(sb.toString().toString());
    }

    public static /* synthetic */ void m(Object obj, Object obj2, Object obj3, Throwable th) {
        StringBuilder sb = new StringBuilder();
        sb.append(obj);
        sb.append(obj2);
        sb.append(obj3);
        throw new IllegalStateException(sb.toString(), th);
    }

    public static /* synthetic */ void m(Object obj, Object obj2, String str) {
        throw new IllegalArgumentException((str + obj + obj2).toString());
    }

    public static /* synthetic */ void m(Object obj, String str) {
        throw new IllegalStateException((str + obj).toString());
    }

    public static /* synthetic */ void m(Object obj, StringBuilder sb) {
        sb.append(obj);
        throw new IllegalStateException(sb.toString());
    }

    public static /* synthetic */ void m(String str) {
        throw new RuntimeException(str);
    }

    public static /* synthetic */ void m(String str, int i) {
        throw new IllegalArgumentException(str + i);
    }

    public static /* synthetic */ void m(String str, int i, Object obj, Object obj2) {
        throw new IllegalArgumentException((str + i + obj + obj2).toString());
    }

    public static /* synthetic */ void m(String str, Object obj, Object obj2, Object obj3) {
        throw new IllegalStateException((str + obj + obj2 + obj3).toString());
    }

    public static /* synthetic */ void m(String str, Throwable th) {
        throw new RuntimeException(str, th);
    }

    public static /* synthetic */ void m(StringBuilder sb, Object obj, Object obj2) {
        sb.append(obj);
        sb.append(obj2);
        throw new IllegalArgumentException(sb.toString().toString());
    }
}
