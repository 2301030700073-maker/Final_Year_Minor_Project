package androidx.compose.foundation.layout;

import ch.qos.logback.core.CoreConstants;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: WindowInsets.kt */
/* loaded from: classes.dex */
public abstract class WindowInsetsSides {
    private static final int AllowLeftInLtr;
    private static final int AllowLeftInRtl;
    private static final int AllowRightInLtr;
    private static final int AllowRightInRtl;
    private static final int Bottom;
    public static final Companion Companion = new Companion(null);
    private static final int End;
    private static final int Horizontal;
    private static final int Left;
    private static final int Right;
    private static final int Start;
    private static final int Top;
    private static final int Vertical;

    /* renamed from: constructor-impl, reason: not valid java name */
    private static int m298constructorimpl(int i) {
        return i;
    }

    /* renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m299equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* renamed from: hasAny-bkgdKaI$foundation_layout_release, reason: not valid java name */
    public static final boolean m300hasAnybkgdKaI$foundation_layout_release(int i, int i2) {
        return (i & i2) != 0;
    }

    /* renamed from: hashCode-impl, reason: not valid java name */
    public static int m301hashCodeimpl(int i) {
        return i;
    }

    /* renamed from: plus-gK_yJZ4, reason: not valid java name */
    public static final int m302plusgK_yJZ4(int i, int i2) {
        return m298constructorimpl(i | i2);
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m303toStringimpl(int i) {
        return "WindowInsetsSides(" + m304valueToStringimpl(i) + CoreConstants.RIGHT_PARENTHESIS_CHAR;
    }

    /* renamed from: valueToString-impl, reason: not valid java name */
    private static final String m304valueToStringimpl(int i) {
        StringBuilder sb = new StringBuilder();
        int i2 = Start;
        if ((i & i2) == i2) {
            valueToString_impl$lambda$0$appendPlus(sb, "Start");
        }
        int i3 = Left;
        if ((i & i3) == i3) {
            valueToString_impl$lambda$0$appendPlus(sb, "Left");
        }
        int i4 = Top;
        if ((i & i4) == i4) {
            valueToString_impl$lambda$0$appendPlus(sb, "Top");
        }
        int i5 = End;
        if ((i & i5) == i5) {
            valueToString_impl$lambda$0$appendPlus(sb, "End");
        }
        int i6 = Right;
        if ((i & i6) == i6) {
            valueToString_impl$lambda$0$appendPlus(sb, "Right");
        }
        int i7 = Bottom;
        if ((i & i7) == i7) {
            valueToString_impl$lambda$0$appendPlus(sb, "Bottom");
        }
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "StringBuilder().apply(builderAction).toString()");
        return sb2;
    }

    private static final void valueToString_impl$lambda$0$appendPlus(StringBuilder sb, String str) {
        if (sb.length() > 0) {
            sb.append('+');
        }
        sb.append(str);
    }

    /* compiled from: WindowInsets.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* renamed from: getAllowLeftInLtr-JoeWqyM$foundation_layout_release, reason: not valid java name */
        public final int m305getAllowLeftInLtrJoeWqyM$foundation_layout_release() {
            return WindowInsetsSides.AllowLeftInLtr;
        }

        /* renamed from: getAllowRightInLtr-JoeWqyM$foundation_layout_release, reason: not valid java name */
        public final int m307getAllowRightInLtrJoeWqyM$foundation_layout_release() {
            return WindowInsetsSides.AllowRightInLtr;
        }

        /* renamed from: getAllowLeftInRtl-JoeWqyM$foundation_layout_release, reason: not valid java name */
        public final int m306getAllowLeftInRtlJoeWqyM$foundation_layout_release() {
            return WindowInsetsSides.AllowLeftInRtl;
        }

        /* renamed from: getAllowRightInRtl-JoeWqyM$foundation_layout_release, reason: not valid java name */
        public final int m308getAllowRightInRtlJoeWqyM$foundation_layout_release() {
            return WindowInsetsSides.AllowRightInRtl;
        }

        /* renamed from: getTop-JoeWqyM, reason: not valid java name */
        public final int m311getTopJoeWqyM() {
            return WindowInsetsSides.Top;
        }

        /* renamed from: getBottom-JoeWqyM, reason: not valid java name */
        public final int m309getBottomJoeWqyM() {
            return WindowInsetsSides.Bottom;
        }

        /* renamed from: getHorizontal-JoeWqyM, reason: not valid java name */
        public final int m310getHorizontalJoeWqyM() {
            return WindowInsetsSides.Horizontal;
        }
    }

    static {
        int m298constructorimpl = m298constructorimpl(8);
        AllowLeftInLtr = m298constructorimpl;
        int m298constructorimpl2 = m298constructorimpl(4);
        AllowRightInLtr = m298constructorimpl2;
        int m298constructorimpl3 = m298constructorimpl(2);
        AllowLeftInRtl = m298constructorimpl3;
        int m298constructorimpl4 = m298constructorimpl(1);
        AllowRightInRtl = m298constructorimpl4;
        Start = m302plusgK_yJZ4(m298constructorimpl, m298constructorimpl4);
        End = m302plusgK_yJZ4(m298constructorimpl2, m298constructorimpl3);
        int m298constructorimpl5 = m298constructorimpl(16);
        Top = m298constructorimpl5;
        int m298constructorimpl6 = m298constructorimpl(32);
        Bottom = m298constructorimpl6;
        int m302plusgK_yJZ4 = m302plusgK_yJZ4(m298constructorimpl, m298constructorimpl3);
        Left = m302plusgK_yJZ4;
        int m302plusgK_yJZ42 = m302plusgK_yJZ4(m298constructorimpl2, m298constructorimpl4);
        Right = m302plusgK_yJZ42;
        Horizontal = m302plusgK_yJZ4(m302plusgK_yJZ4, m302plusgK_yJZ42);
        Vertical = m302plusgK_yJZ4(m298constructorimpl5, m298constructorimpl6);
    }
}
