package defpackage;

import android.R;
import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import com.google.android.material.search.SearchBar;
import defpackage.QK;
import java.util.WeakHashMap;

/* renamed from: tL, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C3738tL {

    /* renamed from: tL$do, reason: invalid class name */
    public class Cdo implements InterfaceC0136Bv {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ Cfor f15694do;

        /* renamed from: do, reason: not valid java name and collision with other field name */
        public final /* synthetic */ Cif f15695do;

        public Cdo(Cif cif, Cfor cfor) {
            this.f15695do = cif;
            this.f15694do = cfor;
        }

        @Override // defpackage.InterfaceC0136Bv
        /* renamed from: for */
        public final C3150jM mo137for(View view, C3150jM c3150jM) {
            return this.f15695do.mo1008do(view, c3150jM, new Cfor(this.f15694do));
        }
    }

    /* renamed from: tL$if, reason: invalid class name */
    public interface Cif {
        /* renamed from: do */
        C3150jM mo1008do(View view, C3150jM c3150jM, Cfor cfor);
    }

    /* renamed from: case, reason: not valid java name */
    public static void m8280case(View view) {
        InputMethodManager inputMethodManager = (InputMethodManager) C0466Ra.getSystemService(view.getContext(), InputMethodManager.class);
        if (inputMethodManager != null) {
            inputMethodManager.hideSoftInputFromWindow(view.getWindowToken(), 0);
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static Rect m8281do(View view, SearchBar searchBar) {
        int[] iArr = new int[2];
        searchBar.getLocationOnScreen(iArr);
        int i = iArr[0];
        int i2 = iArr[1];
        int[] iArr2 = new int[2];
        view.getLocationOnScreen(iArr2);
        int i3 = i - iArr2[0];
        int i4 = i2 - iArr2[1];
        return new Rect(i3, i4, searchBar.getWidth() + i3, searchBar.getHeight() + i4);
    }

    /* renamed from: else, reason: not valid java name */
    public static boolean m8282else(View view) {
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        return view.getLayoutDirection() == 1;
    }

    /* renamed from: for, reason: not valid java name */
    public static float m8283for(Context context, int i) {
        return TypedValue.applyDimension(1, i, context.getResources().getDisplayMetrics());
    }

    /* renamed from: goto, reason: not valid java name */
    public static PorterDuff.Mode m8284goto(int i, PorterDuff.Mode mode) {
        if (i == 3) {
            return PorterDuff.Mode.SRC_OVER;
        }
        if (i == 5) {
            return PorterDuff.Mode.SRC_IN;
        }
        if (i == 9) {
            return PorterDuff.Mode.SRC_ATOP;
        }
        switch (i) {
            case 14:
                return PorterDuff.Mode.MULTIPLY;
            case 15:
                return PorterDuff.Mode.SCREEN;
            case 16:
                return PorterDuff.Mode.ADD;
            default:
                return mode;
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static void m8285if(View view, Cif cif) {
        WeakHashMap<View, C3385nL> weakHashMap = QK.f2909do;
        QK.Cnew.m1935return(view, new Cdo(cif, new Cfor(view.getPaddingStart(), view.getPaddingTop(), view.getPaddingEnd(), view.getPaddingBottom())));
        if (view.isAttachedToWindow()) {
            QK.Cfor.m1903for(view);
        } else {
            view.addOnAttachStateChangeListener(new ViewOnAttachStateChangeListenerC3797uL());
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static ViewGroup m8286new(View view) {
        if (view == null) {
            return null;
        }
        View rootView = view.getRootView();
        ViewGroup viewGroup = (ViewGroup) rootView.findViewById(R.id.content);
        if (viewGroup != null) {
            return viewGroup;
        }
        if (rootView == view || !(rootView instanceof ViewGroup)) {
            return null;
        }
        return (ViewGroup) rootView;
    }

    /* renamed from: try, reason: not valid java name */
    public static C0174Dp m8287try(View view) {
        ViewGroup m8286new = m8286new(view);
        if (m8286new == null) {
            return null;
        }
        return new C0174Dp(m8286new);
    }

    /* renamed from: tL$for, reason: invalid class name */
    public static class Cfor {

        /* renamed from: do, reason: not valid java name */
        public int f15696do;

        /* renamed from: for, reason: not valid java name */
        public int f15697for;

        /* renamed from: if, reason: not valid java name */
        public int f15698if;

        /* renamed from: new, reason: not valid java name */
        public int f15699new;

        public Cfor(int i, int i2, int i3, int i4) {
            this.f15696do = i;
            this.f15698if = i2;
            this.f15697for = i3;
            this.f15699new = i4;
        }

        public Cfor(Cfor cfor) {
            this.f15696do = cfor.f15696do;
            this.f15698if = cfor.f15698if;
            this.f15697for = cfor.f15697for;
            this.f15699new = cfor.f15699new;
        }
    }
}
