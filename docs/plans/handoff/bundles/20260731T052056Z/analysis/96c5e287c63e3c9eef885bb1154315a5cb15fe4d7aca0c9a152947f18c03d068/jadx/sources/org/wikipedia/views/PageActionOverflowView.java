package org.wikipedia.views;

import android.widget.FrameLayout;
import android.widget.PopupWindow;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.MultipartBody;
import org.wikipedia.page.action.PageActionItem;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class PageActionOverflowView extends FrameLayout {
    public MultipartBody.Builder binding;
    public PageActionItem.Callback callback;
    public PopupWindow popupWindowHost;

    /* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
    public abstract /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[PageActionItem.values().length];
            try {
                iArr[PageActionItem.ADD_TO_WATCHLIST.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[PageActionItem.SAVE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[PageActionItem.EDIT_ARTICLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[PageActionItem.VIEW_ON_MAP.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public final void dismissPopupWindowHost() {
        PopupWindow popupWindow = this.popupWindowHost;
        if (popupWindow != null) {
            popupWindow.dismiss();
            this.popupWindowHost = null;
        }
    }

    public final PageActionItem.Callback getCallback() {
        PageActionItem.Callback callback = this.callback;
        if (callback != null) {
            return callback;
        }
        Intrinsics.throwUninitializedPropertyAccessException("callback");
        throw null;
    }

    public final void setCallback(PageActionItem.Callback callback) {
        callback.getClass();
        this.callback = callback;
    }
}
