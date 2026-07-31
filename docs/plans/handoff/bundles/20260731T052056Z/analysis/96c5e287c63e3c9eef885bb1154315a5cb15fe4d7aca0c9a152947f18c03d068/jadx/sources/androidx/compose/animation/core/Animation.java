package androidx.compose.animation.core;

import androidx.compose.foundation.layout.LayoutWeightElement;
import androidx.compose.foundation.layout.internal.InlineClassHelperKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutAnimateItemElement;
import androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridItemScopeImpl;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.node.ComposeUiNode$Companion$SetModifier$1;
import androidx.compose.ui.node.OwnerSnapshotObserver$onCommitAffectingLayout$1;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.unit.IntOffset;
import androidx.concurrent.futures.CallbackToFutureAdapter$Resolver;
import androidx.recyclerview.widget.RecyclerView;
import com.caverock.androidsvg.SVG;
import java.util.ArrayList;
import java.util.Map;
import kotlin.ResultKt;
import kotlin.jvm.internal.Ref$ObjectRef;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public interface Animation {
    long getDurationNanos();

    Object getTargetValue();

    TwoWayConverterImpl getTypeConverter();

    Object getValueFromNanos(long j);

    AnimationVector getVelocityVectorFromNanos(long j);

    boolean isFinishedFromNanos(long j);

    boolean isInfinite();

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    /* renamed from: androidx.compose.animation.core.Animation$-CC, reason: invalid class name */
    public abstract /* synthetic */ class CC implements CallbackToFutureAdapter$Resolver {
        public static boolean $default$isFinishedFromNanos(Animation animation, long j) {
            return j >= animation.getDurationNanos();
        }

        public static Modifier animateItem$default(LazyStaggeredGridItemScopeImpl lazyStaggeredGridItemScopeImpl) {
            SpringSpec spring$default = ArcSplineKt.spring$default(RecyclerView.DECELERATION_RATE, 400.0f, null, 5);
            Map map = VisibilityThresholdsKt.VisibilityThresholdMap;
            SpringSpec spring$default2 = ArcSplineKt.spring$default(RecyclerView.DECELERATION_RATE, 400.0f, new IntOffset(4294967297L), 1);
            SpringSpec spring$default3 = ArcSplineKt.spring$default(RecyclerView.DECELERATION_RATE, 400.0f, null, 5);
            lazyStaggeredGridItemScopeImpl.getClass();
            return new LazyLayoutAnimateItemElement(spring$default, spring$default2, spring$default3);
        }

        public static StringBuilder m(int i, int i2, String str, String str2, String str3) {
            StringBuilder sb = new StringBuilder(str);
            sb.append(i);
            sb.append(str2);
            sb.append(i2);
            sb.append(str3);
            return sb;
        }

        public static Modifier weight$default(Modifier modifier, float f) {
            if (f <= 0.0d) {
                InlineClassHelperKt.throwIllegalArgumentException("invalid weight; must be greater than zero");
            }
            if (f > Float.MAX_VALUE) {
                f = Float.MAX_VALUE;
            }
            return modifier.then(new LayoutWeightElement(f, true));
        }

        public static Modifier weight$default$1(Modifier modifier, float f) {
            if (f <= 0.0d) {
                InlineClassHelperKt.throwIllegalArgumentException("invalid weight; must be greater than zero");
            }
            if (f > Float.MAX_VALUE) {
                f = Float.MAX_VALUE;
            }
            return modifier.then(new LayoutWeightElement(f, true));
        }

        public static int m(int i, float f, int i2) {
            return (Float.floatToIntBits(f) + i) * i2;
        }

        public static int m(int i, int i2, long j) {
            return (Modifier.CC.m(j) + i) * i2;
        }

        public static int m(int i, int i2, String str) {
            return (str.hashCode() + i) * i2;
        }

        public static int m(TextStyle textStyle, int i, int i2) {
            return (textStyle.hashCode() + i) * i2;
        }

        public static ClassCastException m(Object obj) {
            obj.getClass();
            return new ClassCastException();
        }

        public static Object m(int i, ArrayList arrayList) {
            return arrayList.get(arrayList.size() - i);
        }

        public static String m(char c, String str, String str2) {
            return str + str2 + c;
        }

        public static String m(int i, String str) {
            return str + i;
        }

        public static String m(int i, String str, String str2) {
            return str + i + str2;
        }

        public static String m(String str, long j) {
            return str + j;
        }

        public static String m(String str, String str2, String str3) {
            return str + str2 + str3;
        }

        public static String m(StringBuilder sb, float f, char c) {
            sb.append(f);
            sb.append(c);
            return sb.toString();
        }

        public static String m(StringBuilder sb, int i, char c) {
            sb.append(i);
            sb.append(c);
            return sb.toString();
        }

        public static String m(StringBuilder sb, String str, String str2) {
            sb.append(str);
            sb.append(str2);
            return sb.toString();
        }

        public static String m(StringBuilder sb, boolean z, char c) {
            sb.append(z);
            sb.append(c);
            return sb.toString();
        }

        public static float m(float f, float f2, float f3, float f4) {
            return ((f - f2) * f3) + f4;
        }

        /* renamed from: m, reason: collision with other method in class */
        public static StringBuilder m20m(int i, String str, String str2) {
            StringBuilder sb = new StringBuilder(str);
            sb.append(i);
            sb.append(str2);
            return sb;
        }

        /* renamed from: m, reason: collision with other method in class */
        public static StringBuilder m21m(String str, String str2, String str3) {
            StringBuilder sb = new StringBuilder(str);
            sb.append(str2);
            sb.append(str3);
            return sb;
        }

        /* renamed from: m, reason: collision with other method in class */
        public static Ref$ObjectRef m22m(Object obj) {
            ResultKt.throwOnFailure(obj);
            return new Ref$ObjectRef();
        }

        public static void m(int i, GapComposer gapComposer, ComposeUiNode$Companion$SetModifier$1 composeUiNode$Companion$SetModifier$1, GapComposer gapComposer2, OwnerSnapshotObserver$onCommitAffectingLayout$1 ownerSnapshotObserver$onCommitAffectingLayout$1) {
            Updater.m327setimpl(gapComposer, Integer.valueOf(i), composeUiNode$Companion$SetModifier$1);
            Updater.m326reconcileimpl(gapComposer2, ownerSnapshotObserver$onCommitAffectingLayout$1);
        }

        public static void m(long j, StringBuilder sb, String str) {
            sb.append((Object) Color.m434toStringimpl(j));
            sb.append(str);
        }

        public static void m(SVG svg, long j) {
            svg.getCanvas().restore();
            svg.m797setSizeuvyYCjk(j);
        }

        /* renamed from: m, reason: collision with other method in class */
        public static /* synthetic */ boolean m23m(Object obj) {
            return obj != null;
        }
    }
}
