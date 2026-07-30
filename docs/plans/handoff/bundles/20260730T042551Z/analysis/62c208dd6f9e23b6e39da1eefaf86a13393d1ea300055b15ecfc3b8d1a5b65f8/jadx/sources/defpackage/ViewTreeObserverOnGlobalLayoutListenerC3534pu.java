package defpackage;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.graphics.Color;
import android.graphics.Rect;
import android.view.ViewTreeObserver;
import com.google.android.material.internal.ScrimInsetsFrameLayout;
import com.google.android.material.navigation.NavigationView;

/* renamed from: pu, reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class ViewTreeObserverOnGlobalLayoutListenerC3534pu implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: do, reason: not valid java name */
    public final /* synthetic */ NavigationView f15012do;

    public ViewTreeObserverOnGlobalLayoutListenerC3534pu(NavigationView navigationView) {
        this.f15012do = navigationView;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        Activity activity;
        NavigationView navigationView = this.f15012do;
        navigationView.getLocationOnScreen(navigationView.f11237do);
        int[] iArr = navigationView.f11237do;
        boolean z = true;
        boolean z2 = iArr[1] == 0;
        C3180ju c3180ju = navigationView.f11234do;
        if (c3180ju.f13834for != z2) {
            c3180ju.f13834for = z2;
            c3180ju.m7174do();
        }
        ((ScrimInsetsFrameLayout) navigationView).f11196do = z2 && navigationView.f11242try;
        int i = iArr[0];
        ((ScrimInsetsFrameLayout) navigationView).f11197for = i == 0 || navigationView.getWidth() + i == 0;
        Context context = navigationView.getContext();
        while (true) {
            if (!(context instanceof ContextWrapper)) {
                activity = null;
                break;
            } else {
                if (context instanceof Activity) {
                    activity = (Activity) context;
                    break;
                }
                context = ((ContextWrapper) context).getBaseContext();
            }
        }
        if (activity != null) {
            Rect m7366do = C3268lM.m7366do(activity);
            ((ScrimInsetsFrameLayout) navigationView).f11199if = (m7366do.height() - navigationView.getHeight() == iArr[1]) && (Color.alpha(activity.getWindow().getNavigationBarColor()) != 0) && navigationView.f11228case;
            if (m7366do.width() != iArr[0] && m7366do.width() - navigationView.getWidth() != iArr[0]) {
                z = false;
            }
            ((ScrimInsetsFrameLayout) navigationView).f11200new = z;
        }
    }
}
