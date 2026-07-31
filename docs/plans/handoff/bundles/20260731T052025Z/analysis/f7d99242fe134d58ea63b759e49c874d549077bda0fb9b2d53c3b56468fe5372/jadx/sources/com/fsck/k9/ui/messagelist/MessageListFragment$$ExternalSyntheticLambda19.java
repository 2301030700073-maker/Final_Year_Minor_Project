package com.fsck.k9.ui.messagelist;

import android.view.View;
import android.view.ViewGroup;
import androidx.core.graphics.Insets;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.WindowInsetsCompat;
import com.fsck.k9.R;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class MessageListFragment$$ExternalSyntheticLambda19 implements OnApplyWindowInsetsListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ View f$0;

    public /* synthetic */ MessageListFragment$$ExternalSyntheticLambda19(View view, int i) {
        this.$r8$classId = i;
        this.f$0 = view;
    }

    @Override // androidx.core.view.OnApplyWindowInsetsListener
    public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
        int i = this.$r8$classId;
        View view2 = this.f$0;
        switch (i) {
            case 0:
                view.getClass();
                Insets insets = windowInsetsCompat.mImpl.getInsets(519);
                insets.getClass();
                ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
                if (layoutParams == null) {
                    Regex$$ExternalSyntheticBUOutline0.m("null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
                    break;
                } else {
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                    int dimensionPixelSize = view2.getResources().getDimensionPixelSize(R.dimen.floatingActionButtonMargin);
                    marginLayoutParams.bottomMargin = dimensionPixelSize;
                    marginLayoutParams.rightMargin = insets.right + dimensionPixelSize;
                    marginLayoutParams.leftMargin = dimensionPixelSize + insets.left;
                    view.setLayoutParams(marginLayoutParams);
                    break;
                }
            default:
                view.getClass();
                Insets insets2 = windowInsetsCompat.mImpl.getInsets(519);
                insets2.getClass();
                ViewGroup.LayoutParams layoutParams2 = view.getLayoutParams();
                if (layoutParams2 == null) {
                    Regex$$ExternalSyntheticBUOutline0.m("null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
                    break;
                } else {
                    ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) layoutParams2;
                    int dimensionPixelSize2 = view2.getResources().getDimensionPixelSize(R.dimen.floatingActionButtonMargin);
                    marginLayoutParams2.bottomMargin = dimensionPixelSize2;
                    marginLayoutParams2.rightMargin = insets2.right + dimensionPixelSize2;
                    marginLayoutParams2.leftMargin = dimensionPixelSize2 + insets2.left;
                    view.setLayoutParams(marginLayoutParams2);
                    break;
                }
        }
        return null;
    }
}
