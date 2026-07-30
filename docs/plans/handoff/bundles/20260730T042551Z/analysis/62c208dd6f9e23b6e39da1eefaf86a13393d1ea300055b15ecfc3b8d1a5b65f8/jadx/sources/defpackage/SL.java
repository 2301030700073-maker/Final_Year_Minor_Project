package defpackage;

import android.view.MotionEvent;
import android.view.View;
import com.facebook.internal.WebDialog;
import com.google.android.material.search.SearchView;

/* loaded from: classes.dex */
public final /* synthetic */ class SL implements View.OnTouchListener {

    /* renamed from: for, reason: not valid java name */
    public final /* synthetic */ int f3506for;

    public /* synthetic */ SL(int i) {
        this.f3506for = i;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        boolean m5444setUpWebView$lambda7;
        switch (this.f3506for) {
            case 0:
                m5444setUpWebView$lambda7 = WebDialog.m5444setUpWebView$lambda7(view, motionEvent);
                return m5444setUpWebView$lambda7;
            default:
                int i = SearchView.f11281try;
                return true;
        }
    }
}
