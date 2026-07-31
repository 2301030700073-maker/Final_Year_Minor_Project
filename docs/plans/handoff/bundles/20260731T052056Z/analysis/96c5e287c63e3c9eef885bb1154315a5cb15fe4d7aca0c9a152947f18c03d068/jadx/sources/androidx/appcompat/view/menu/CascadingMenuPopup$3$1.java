package androidx.appcompat.view.menu;

import android.animation.ValueAnimator;
import android.view.View;
import androidx.appcompat.view.menu.CascadingMenuPopup;
import androidx.appcompat.widget.PopupMenu$1;
import androidx.cardview.widget.CardView;
import androidx.core.view.WindowInsetsAnimationCompat;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class CascadingMenuPopup$3$1 implements Runnable {
    public final /* synthetic */ int $r8$classId = 1;
    public final /* synthetic */ Object this$1;
    public final /* synthetic */ Object val$item;
    public final /* synthetic */ Object val$menu;
    public final /* synthetic */ Object val$nextInfo;

    public CascadingMenuPopup$3$1(PopupMenu$1 popupMenu$1, CascadingMenuPopup.CascadingMenuInfo cascadingMenuInfo, MenuItemImpl menuItemImpl, MenuBuilder menuBuilder) {
        this.this$1 = popupMenu$1;
        this.val$nextInfo = cascadingMenuInfo;
        this.val$item = menuItemImpl;
        this.val$menu = menuBuilder;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.$r8$classId;
        Object obj = this.this$1;
        Object obj2 = this.val$menu;
        Object obj3 = this.val$item;
        Object obj4 = this.val$nextInfo;
        switch (i) {
            case 0:
                CascadingMenuPopup cascadingMenuPopup = (CascadingMenuPopup) ((PopupMenu$1) obj).this$0;
                MenuItemImpl menuItemImpl = (MenuItemImpl) obj3;
                CascadingMenuPopup.CascadingMenuInfo cascadingMenuInfo = (CascadingMenuPopup.CascadingMenuInfo) obj4;
                if (cascadingMenuInfo != null) {
                    cascadingMenuPopup.mShouldCloseImmediately = true;
                    cascadingMenuInfo.menu.close(false);
                    cascadingMenuPopup.mShouldCloseImmediately = false;
                }
                if (menuItemImpl.isEnabled() && menuItemImpl.hasSubMenu()) {
                    ((MenuBuilder) obj2).performItemAction(menuItemImpl, null, 4);
                    break;
                }
                break;
            default:
                WindowInsetsAnimationCompat.Impl21.dispatchOnStart((View) obj4, (WindowInsetsAnimationCompat) obj3, (CardView.AnonymousClass1) obj2);
                ((ValueAnimator) obj).start();
                break;
        }
    }

    public CascadingMenuPopup$3$1(View view, WindowInsetsAnimationCompat windowInsetsAnimationCompat, CardView.AnonymousClass1 anonymousClass1, ValueAnimator valueAnimator) {
        this.val$nextInfo = view;
        this.val$item = windowInsetsAnimationCompat;
        this.val$menu = anonymousClass1;
        this.this$1 = valueAnimator;
    }
}
