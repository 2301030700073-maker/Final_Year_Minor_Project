package com.facebook.ads.redexgen.core;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.text.Layout;
import android.transition.AutoTransition;
import android.transition.Transition;
import android.transition.TransitionManager;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.BounceInterpolator;
import android.view.animation.ScaleAnimation;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import java.util.Arrays;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: assets/audience_network.dex */
public abstract class D3 {
    public static byte[] A00;
    public static String[] A01 = {"aXQ8cQ350VCAT2mitcvykUGHubvGx6C9", "NAK0YApfoevBcA8nU2", "YHwKc8bJ3fYIczYaga21kucMEh7K8adi", "qYAOAoZ496ND8", "6pHjubFxbGGqNA8P9d", "3r9qhhsI1oDbETggKvxV5tdwn", "sRn13xQSljRP603ULBb8dNJbjS", "vNgqutu69Vtz3tnibxv52jRaXo"};
    public static final int A02;
    public static final int A03;
    public static final ConcurrentHashMap<Integer, Integer> A04;
    public static final AtomicInteger A05;

    public static String A0B(int i, int i2, int i3) {
        byte[] copyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < copyOfRange.length; i4++) {
            copyOfRange[i4] = (byte) ((copyOfRange[i4] - i3) - 15);
        }
        return new String(copyOfRange);
    }

    public static void A0C() {
        A00 = new byte[]{120, 118, -127, -127, 122, -121, 105, -114, -123, 122, -35, -26, -29, -35, -27, -39, -19, -23, -17, -20, -35, -33, -124, -121, -118, -110, -125, -112, -125, -126, 125, -127, -118, -121, -127, -119, 125, -126, -125, -118, Byte.MAX_VALUE, -105, 125, -117, -111, -40, -35, -29, -44, -31, -30, -29, -40, -29, -40, -48, -37, -39, -29, -49, -45, -47, -45, -49, -42, -39, -36, -28, -43, -30, -49, -45, -36, -39, -45, -37, -29, -49, -33, -34, -49, -45, -28, -47, -125, -115, 121, 125, -116, Byte.MAX_VALUE, 123, -114, -125, -112, Byte.MAX_VALUE, 121, 123, -115, 121, 125, -114, 123, 121, -112, 76, -90, -103, -85, -107, -90, -104, -103, -104, -109, -86, -99, -104, -103, -93, -50, -53, -66, -53, -48, -53, -119, -55, -63, -64, -59, -47, -55, -11, -29, -16, -11, -81, -11, -25, -12, -21, -24, -81, -17, -25, -26, -21, -9, -17, -36, -43, -48, -40, -36, -52, -80, -53, -66, -68, -82, -69, -84, -75, -78, -84, -76};
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException: Index 9 out of bounds for length 9
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.startVar(DebugInfoParser.java:203)
    	at jadx.plugins.input.dex.sections.debuginfo.DebugInfoParser.process(DebugInfoParser.java:135)
    	at jadx.plugins.input.dex.sections.DexCodeReader.getDebugInfo(DexCodeReader.java:122)
    	at jadx.core.dex.nodes.MethodNode.getDebugInfo(MethodNode.java:636)
    	at jadx.core.dex.visitors.debuginfo.DebugInfoAttachVisitor.visit(DebugInfoAttachVisitor.java:38)
     */
    public static boolean A0e(C2322k1 c2322k1, EnumC08771u enumC08771u, Map<String, String> map) {
        String str = map.get(A0B(84, 21, 11));
        boolean z = str != null && str.equals(Boolean.TRUE.toString());
        if (z && (A0d(c2322k1, enumC08771u) || A0b(enumC08771u, map))) {
            return true;
        }
        String str2 = map.get(A0B(57, 27, 97));
        return z && (str2 != null && str2.equals(Boolean.TRUE.toString())) && A0c(enumC08771u, map);
    }

    static {
        A0C();
        A03 = AnonymousClass43.A02(-1, 0);
        A02 = AnonymousClass43.A02(-16777216, 115);
        A05 = new AtomicInteger(1);
        A04 = new ConcurrentHashMap<>();
    }

    public static int A00() {
        int i;
        int newValue;
        do {
            i = A05.get();
            newValue = i + 1;
            if (newValue > 16777215) {
                newValue = 1;
            }
        } while (!A05.compareAndSet(i, newValue));
        return i;
    }

    public static int A01(int i) {
        return (int) TypedValue.applyDimension(2, i, CP.A04);
    }

    public static int A02(int i) {
        if (A0a(i)) {
            return AnonymousClass43.A05(i, -1, 0.4f);
        }
        return AnonymousClass43.A05(i, -16777216, 0.2f);
    }

    public static int A03(TextView textView) {
        Layout layout;
        int lineCount;
        if (textView == null || textView.getLayout() == null || (lineCount = (layout = textView.getLayout()).getLineCount()) <= 0) {
            return 0;
        }
        double ellipsisCount = layout.getEllipsisCount(lineCount - 1);
        double ellipsisCount2 = ellipsisCount / (textView.getText().length() - ellipsisCount);
        if (A01[3].length() == 20) {
            throw new RuntimeException();
        }
        A01[3] = "IkK7ljd8WWfE470H6O9Fo";
        return (int) Math.ceil(ellipsisCount2);
    }

    public static int A04(TextView textView, int i) {
        int lineHeightTitle = A03(textView);
        int lines = 0;
        int extraLinesRequired = textView.getLineHeight();
        while (i > extraLinesRequired && lines < lineHeightTitle) {
            lines++;
            i -= extraLinesRequired;
        }
        return lines;
    }

    public static Drawable A05(int i, int i2) {
        return A08(i, A02(i), i2);
    }

    public static Drawable A06(int i, int i2) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(i);
        gradientDrawable.setCornerRadius(i2);
        return gradientDrawable;
    }

    public static Drawable A07(int i, int i2) {
        float[] fArr = new float[8];
        Arrays.fill(fArr, i2);
        ShapeDrawable shapeDrawable = new ShapeDrawable(new RoundRectShape(fArr, null, null));
        shapeDrawable.getPaint().setColor(i);
        return shapeDrawable;
    }

    public static Drawable A08(int i, int i2, int i3) {
        return A09(i, i2, i, i3);
    }

    public static Drawable A09(int i, int i2, int i3, int i4) {
        return new RippleDrawable(ColorStateList.valueOf(i2), A06(i, i4), A07(i3, i4));
    }

    /* JADX WARN: Incorrect condition in loop: B:3:0x0005 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.widget.TextView A0A(android.view.ViewGroup r4) {
        /*
            r1 = 0
        L1:
            int r0 = r4.getChildCount()
            if (r1 >= r0) goto L3d
            android.view.View r3 = r4.getChildAt(r1)
            boolean r0 = r3 instanceof android.widget.TextView
            if (r0 == 0) goto L2b
            android.widget.TextView r3 = (android.widget.TextView) r3
            java.lang.String[] r1 = com.facebook.ads.redexgen.core.D3.A01
            r0 = 3
            r0 = r1[r0]
            int r1 = r0.length()
            r0 = 20
            if (r1 == r0) goto L37
            java.lang.String[] r2 = com.facebook.ads.redexgen.core.D3.A01
            java.lang.String r1 = "6RJtTYzLBnUcHRvsTatmkmWKIun16hlE"
            r0 = 0
            r2[r0] = r1
            java.lang.String r1 = "BwINbhkVgYMYeGJED3O8k6L5SNrYNN6g"
            r0 = 2
            r2[r0] = r1
            return r3
        L2b:
            boolean r0 = r3 instanceof android.view.ViewGroup
            if (r0 == 0) goto L34
            android.view.ViewGroup r3 = (android.view.ViewGroup) r3
            A0A(r3)
        L34:
            int r1 = r1 + 1
            goto L1
        L37:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L3d:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.core.D3.A0A(android.view.ViewGroup):android.widget.TextView");
    }

    public static void A0D(int i, View view) {
        ScaleAnimation scaleAnimation = new ScaleAnimation(1.0f, 0.8f, 1.0f, 0.8f, 1, 0.5f, 1, 0.5f);
        scaleAnimation.setDuration(i / 3);
        scaleAnimation.setInterpolator(new AccelerateInterpolator());
        ScaleAnimation scaleAnimation2 = new ScaleAnimation(0.8f, 1.0f, 0.8f, 1.0f, 1, 0.5f, 1, 0.5f);
        scaleAnimation2.setDuration((i / 3) * 2);
        scaleAnimation2.setInterpolator(new BounceInterpolator());
        scaleAnimation.setAnimationListener(new i3(view, scaleAnimation2));
        view.startAnimation(scaleAnimation);
    }

    public static void A0E(int i, View view) {
        Integer viewId = A04.get(Integer.valueOf(i));
        if (viewId != null) {
            view.setId(viewId.intValue());
        } else {
            A0I(view);
        }
    }

    public static void A0F(View view) {
        A0L(view, 8);
    }

    public static void A0G(View view) {
        ViewParent parent = view.getParent();
        if (parent != null && (parent instanceof ViewGroup)) {
            A0R((ViewGroup) parent);
        }
    }

    public static void A0H(View view) {
        if (view == null) {
            return;
        }
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        if (A01[3].length() == 20) {
            throw new RuntimeException();
        }
        A01[3] = "DU33ZJN3ug5gIBKNKyYbqVVAVCFz";
        if (viewGroup != null) {
            viewGroup.removeView(view);
        }
    }

    public static void A0I(View view) {
        if (view == null) {
            return;
        }
        view.setId(View.generateViewId());
    }

    public static void A0J(View view) {
        A0L(view, 0);
    }

    public static void A0K(View view, int i) {
        view.setBackground(new ColorDrawable(i));
    }

    public static void A0L(View view, int i) {
        if (view != null) {
            view.setVisibility(i);
        }
    }

    public static void A0M(View view, int i, int i2) {
        A0Q(view, A08(i, A02(i), i2));
    }

    public static void A0N(View view, int i, int i2, int i3) {
        GradientDrawable gradientDrawable = new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, new int[]{A03, A02});
        gradientDrawable.setCornerRadius(i);
        gradientDrawable.setStroke(i2, i3);
        A0Q(view, gradientDrawable);
    }

    public static void A0O(View view, int i, int i2, int i3) {
        A0Q(view, A09(i, A02(i), i2, i3));
    }

    public static void A0P(View view, Context context) {
        GradientDrawable gradientDrawable = new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, new int[]{A03, A02});
        gradientDrawable.setCornerRadius(0.0f);
        A0Q(view, gradientDrawable);
    }

    public static void A0Q(View view, Drawable drawable) {
        view.setBackground(drawable);
    }

    public static void A0R(ViewGroup viewGroup) {
        A0S(viewGroup, 200);
    }

    public static void A0S(ViewGroup viewGroup, int i) {
        A0U(viewGroup, new AutoTransition(), i);
    }

    public static void A0T(ViewGroup viewGroup, Transition transition) {
        A0U(viewGroup, transition, 200);
    }

    public static void A0U(ViewGroup viewGroup, Transition transition, int i) {
        transition.setDuration(i);
        transition.setInterpolator(new AccelerateDecelerateInterpolator());
        TransitionManager.beginDelayedTransition(viewGroup, transition);
    }

    public static void A0V(Button button) {
        Typeface typeface = Typeface.create(A0B(119, 13, 77), 0);
        button.setTypeface(typeface);
    }

    public static void A0W(TextView textView, boolean z, int i) {
        Typeface typeface;
        if (z) {
            typeface = Typeface.create(A0B(132, 17, 115), 0);
        } else {
            Typeface typeface2 = Typeface.SANS_SERIF;
            typeface = Typeface.create(typeface2, 0);
        }
        textView.setTypeface(typeface);
        if (A01[5].length() != 25) {
            throw new RuntimeException();
        }
        A01[3] = "EYVeEO4Fu";
        textView.setTextSize(2, i);
    }

    public static void A0X(Toast toast, String str, int i, int i2, int i3) {
        if (toast == null) {
            return;
        }
        toast.setGravity(i, i2, i3);
        TextView A0A = A0A((ViewGroup) toast.getView());
        if (A0A != null) {
            A0A.setText(str);
            A0A.setGravity(17);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:11:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0075  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void A0Y(java.util.Map<java.lang.String, java.lang.String> r5, com.facebook.ads.redexgen.core.AbstractC2478md r6) {
        /*
            if (r6 != 0) goto L3
            return
        L3:
            java.lang.String r4 = r6.A0i()
            int r0 = r4.hashCode()
            switch(r0) {
                case -1364000502: goto La6;
                case 604727084: goto L7f;
                default: goto Le;
            }
        Le:
            r3 = -1
        Lf:
            r2 = 0
            r1 = 10
            r0 = 6
            java.lang.String r1 = A0B(r2, r1, r0)
            switch(r3) {
                case 0: goto L75;
                case 1: goto L6b;
                default: goto L1a;
            }
        L1a:
            java.lang.String r3 = r6.A0d()
            r2 = 149(0x95, float:2.09E-43)
            r1 = 8
            r0 = 88
            java.lang.String r0 = A0B(r2, r1, r0)
            r5.put(r0, r3)
            boolean r0 = r6.A1D()
            java.lang.String r3 = java.lang.String.valueOf(r0)
            r2 = 84
            r1 = 21
            r0 = 11
            java.lang.String r0 = A0B(r2, r1, r0)
            r5.put(r0, r3)
            boolean r0 = r6.A19()
            java.lang.String r3 = java.lang.String.valueOf(r0)
            r2 = 57
            r1 = 27
            r0 = 97
            java.lang.String r0 = A0B(r2, r1, r0)
            r5.put(r0, r3)
            long r0 = r6.A0a()
            java.lang.String r3 = java.lang.String.valueOf(r0)
            r2 = 22
            r1 = 23
            r0 = 15
            java.lang.String r0 = A0B(r2, r1, r0)
            r5.put(r0, r3)
            return
        L6b:
            com.facebook.ads.internal.protocol.AdPlacementType r0 = com.facebook.ads.internal.protocol.AdPlacementType.REWARDED_VIDEO
            java.lang.String r0 = r0.name()
            r5.put(r1, r0)
            goto L1a
        L75:
            com.facebook.ads.internal.protocol.AdPlacementType r0 = com.facebook.ads.internal.protocol.AdPlacementType.INTERSTITIAL
            java.lang.String r0 = r0.name()
            r5.put(r1, r0)
            goto L1a
        L7f:
            r2 = 45
            r1 = 12
            r0 = 96
            java.lang.String r3 = A0B(r2, r1, r0)
            java.lang.String[] r1 = com.facebook.ads.redexgen.core.D3.A01
            r0 = 3
            r0 = r1[r0]
            int r1 = r0.length()
            r0 = 20
            if (r1 == r0) goto Lb9
            java.lang.String[] r2 = com.facebook.ads.redexgen.core.D3.A01
            java.lang.String r1 = "p9FB"
            r0 = 3
            r2[r0] = r1
            boolean r0 = r4.equals(r3)
            if (r0 == 0) goto Le
            r3 = 0
            goto Lf
        La6:
            r2 = 105(0x69, float:1.47E-43)
            r1 = 14
            r0 = 37
            java.lang.String r0 = A0B(r2, r1, r0)
            boolean r0 = r4.equals(r0)
            if (r0 == 0) goto Le
            r3 = 1
            goto Lf
        Lb9:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.core.D3.A0Y(java.util.Map, com.facebook.ads.redexgen.X.md):void");
    }

    public static void A0Z(View... viewArr) {
        for (View view : viewArr) {
            A0H(view);
        }
    }

    public static boolean A0a(int i) {
        return AnonymousClass43.A00(i) < 0.5d;
    }

    public static boolean A0b(EnumC08771u enumC08771u, Map<String, String> extraData) {
        boolean nonIabDestination = !A0B(157, 9, 58).equals(extraData.get(A0B(10, 12, FacebookMediationAdapter.ERROR_NULL_CONTEXT)));
        boolean nonCtaClick = enumC08771u != EnumC08771u.A08;
        return nonIabDestination && nonCtaClick;
    }

    public static boolean A0c(EnumC08771u enumC08771u, Map<String, String> extraData) {
        boolean equals = A0B(157, 9, 58).equals(extraData.get(A0B(10, 12, FacebookMediationAdapter.ERROR_NULL_CONTEXT)));
        boolean ctaClick = enumC08771u != EnumC08771u.A08;
        return equals && ctaClick;
    }

    public static boolean A0d(C2322k1 c2322k1, EnumC08771u enumC08771u) {
        return enumC08771u == EnumC08771u.A08 && C10729m.A2m(c2322k1);
    }
}
