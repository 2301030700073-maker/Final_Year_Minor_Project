package androidx.appcompat.view.menu;

import android.animation.ValueAnimator;
import android.view.View;
import androidx.appcompat.view.menu.CascadingMenuPopup;
import androidx.biometric.BiometricPrompt;
import androidx.compose.ui.platform.WeakCache;
import androidx.core.view.WindowInsetsAnimationCompat;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CascadingMenuPopup$3$1 implements Runnable {
    public final /* synthetic */ int $r8$classId = 1;
    public final /* synthetic */ Object this$1;
    public final /* synthetic */ Object val$item;
    public final /* synthetic */ Object val$menu;
    public final /* synthetic */ Object val$nextInfo;

    public CascadingMenuPopup$3$1(BiometricPrompt biometricPrompt, CascadingMenuPopup.CascadingMenuInfo cascadingMenuInfo, MenuItemImpl menuItemImpl, MenuBuilder menuBuilder) {
        this.this$1 = biometricPrompt;
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
                CascadingMenuPopup cascadingMenuPopup = (CascadingMenuPopup) ((BiometricPrompt) obj).mClientFragmentManager;
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
                WindowInsetsAnimationCompat.Impl21.dispatchOnStart((View) obj4, (WindowInsetsAnimationCompat) obj3, (WeakCache) obj2);
                ((ValueAnimator) obj).start();
                break;
        }
    }

    public CascadingMenuPopup$3$1(View view, WindowInsetsAnimationCompat windowInsetsAnimationCompat, WeakCache weakCache, ValueAnimator valueAnimator) {
        this.val$nextInfo = view;
        this.val$item = windowInsetsAnimationCompat;
        this.val$menu = weakCache;
        this.this$1 = valueAnimator;
    }
}
