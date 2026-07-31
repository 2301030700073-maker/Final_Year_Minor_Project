package com.google.android.material.carousel;

import android.graphics.Rect;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.google.android.material.badge.BadgeDrawable;
import com.google.android.material.bottomnavigation.BottomNavigationItemView;
import com.hcaptcha.sdk.tasks.Task$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class CarouselLayoutManager$$ExternalSyntheticLambda0 implements View.OnLayoutChangeListener {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ Object f$0;

    public /* synthetic */ CarouselLayoutManager$$ExternalSyntheticLambda0(int i, Object obj) {
        this.$r8$classId = i;
        this.f$0 = obj;
    }

    @Override // android.view.View.OnLayoutChangeListener
    public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        boolean z;
        BadgeDrawable badgeDrawable;
        int i9 = this.$r8$classId;
        Object obj = this.f$0;
        switch (i9) {
            case 0:
                CarouselLayoutManager carouselLayoutManager = (CarouselLayoutManager) obj;
                if (i3 - i != i7 - i5 || i4 - i2 != i8 - i6) {
                    view.post(new Task$$ExternalSyntheticLambda0(22, carouselLayoutManager));
                    break;
                }
                break;
            default:
                BottomNavigationItemView bottomNavigationItemView = (BottomNavigationItemView) obj;
                View view2 = bottomNavigationItemView.activeIndicatorView;
                ImageView imageView = bottomNavigationItemView.icon;
                if (imageView.getVisibility() == 0 && (badgeDrawable = bottomNavigationItemView.badgeDrawable) != null) {
                    Rect rect = new Rect();
                    imageView.getDrawingRect(rect);
                    badgeDrawable.setBounds(rect);
                    badgeDrawable.updateBadgeCoordinates(imageView, null);
                }
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) bottomNavigationItemView.innerContentContainer.getLayoutParams();
                int i10 = (i3 - i) + layoutParams.rightMargin + layoutParams.leftMargin;
                int i11 = (i4 - i2) + layoutParams.topMargin + layoutParams.bottomMargin;
                boolean z2 = true;
                if (bottomNavigationItemView.itemIconGravity == 1 && bottomNavigationItemView.activeIndicatorExpandedDesiredWidth == -2) {
                    FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) view2.getLayoutParams();
                    if (bottomNavigationItemView.activeIndicatorExpandedDesiredWidth != -2 || view2.getMeasuredWidth() == i10) {
                        z = false;
                    } else {
                        layoutParams2.width = Math.max(i10, Math.min(bottomNavigationItemView.activeIndicatorDesiredWidth, bottomNavigationItemView.getMeasuredWidth() - (bottomNavigationItemView.activeIndicatorMarginHorizontal * 2)));
                        z = true;
                    }
                    if (view2.getMeasuredHeight() < i11) {
                        layoutParams2.height = i11;
                    } else {
                        z2 = z;
                    }
                    if (z2) {
                        view2.setLayoutParams(layoutParams2);
                        break;
                    }
                }
                break;
        }
    }
}
