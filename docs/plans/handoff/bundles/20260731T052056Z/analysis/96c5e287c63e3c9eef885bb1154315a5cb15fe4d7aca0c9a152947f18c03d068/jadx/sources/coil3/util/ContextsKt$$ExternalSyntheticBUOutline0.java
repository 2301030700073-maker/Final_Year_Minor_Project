package coil3.util;

import android.graphics.ColorSpace;
import androidx.transition.Transition;
import coil3.network.HttpException;
import com.caverock.androidsvg.SVGParseException;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class ContextsKt$$ExternalSyntheticBUOutline0 implements Transition.TransitionNotification {
    public final /* synthetic */ int $r8$classId;

    public static /* synthetic */ void m(int i, Object obj, Object obj2) {
        throw new IllegalArgumentException("Cannot create TypeBindings for class " + obj + obj2 + i);
    }

    public static /* synthetic */ void m$1(String str, Object obj) {
        throw new IllegalStateException((str + obj + '\'').toString());
    }

    public static /* synthetic */ void m$2(Object obj, Object obj2, String str) {
        throw new IllegalStateException((str + obj + obj2).toString());
    }

    @Override // androidx.transition.Transition.TransitionNotification
    public void notifyListener(Transition.TransitionListener transitionListener, Transition transition, boolean z) {
        switch (this.$r8$classId) {
            case 7:
                transitionListener.onTransitionStart$1(transition);
                break;
            case 8:
                transitionListener.onTransitionEnd$1(transition);
                break;
            case 9:
                transitionListener.onTransitionCancel(transition);
                break;
            case 10:
                transitionListener.onTransitionPause();
                break;
            default:
                transitionListener.onTransitionResume();
                break;
        }
    }

    public static /* synthetic */ void m$2(String str, Object obj) {
        throw new IllegalArgumentException(str + obj);
    }

    public static /* synthetic */ void m() {
        throw new HttpException();
    }

    public static /* bridge */ /* synthetic */ ColorSpace m(Object obj) {
        return (ColorSpace) obj;
    }

    public static /* synthetic */ void m$1(Object obj, Object obj2, String str) {
        throw new IllegalArgumentException(str + obj + obj2);
    }

    /* renamed from: m, reason: collision with other method in class */
    public static /* synthetic */ void m791m(Object obj) {
        throw new IllegalStateException(obj.toString());
    }

    public static /* synthetic */ void m$1() {
        throw new ClassCastException();
    }

    public static /* synthetic */ void m(Object obj, Object obj2, String str) {
        throw new IllegalArgumentException((str + obj + obj2).toString());
    }

    public static /* synthetic */ void m$1(String str, Object obj, Object obj2, Object obj3) {
        throw new IllegalArgumentException(str + obj + obj2 + obj3);
    }

    public static /* synthetic */ void m(String str) {
        throw new SVGParseException(str);
    }

    public static /* synthetic */ void m(String str, Object obj) {
        throw new IllegalStateException((str + obj).toString());
    }

    public static /* synthetic */ void m(String str, Object obj, Object obj2, Object obj3) {
        throw new IllegalStateException(str + obj + obj2 + obj3);
    }

    public static /* synthetic */ void m(String str, Throwable th) {
        throw new RuntimeException(str, th);
    }

    public static /* synthetic */ void m(String str, Object[] objArr) {
        throw new IllegalArgumentException(String.format(str, objArr));
    }

    public static /* synthetic */ void m(StringBuilder sb, Object obj) {
        sb.append(" at path ");
        sb.append(obj);
        throw new HttpException(sb.toString());
    }
}
