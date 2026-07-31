package com.shopify.reactnative.flash_list;

import android.content.Context;
import com.facebook.react.views.view.ReactViewGroup;
import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: CellContainerImpl.kt */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\u0006J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\bH\u0016J\b\u0010\f\u001a\u00020\bH\u0016R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcom/shopify/reactnative/flash_list/CellContainerImpl;", "Lcom/facebook/react/views/view/ReactViewGroup;", "Lcom/shopify/reactnative/flash_list/CellContainer;", "context", "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", FirebaseAnalytics.Param.INDEX, "", "setIndex", "", "value", "getIndex", "shopify_flash-list_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes5.dex */
public final class CellContainerImpl extends ReactViewGroup implements CellContainer {
    private int index;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CellContainerImpl(Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        this.index = -1;
    }

    @Override // com.shopify.reactnative.flash_list.CellContainer
    public void setIndex(int value) {
        this.index = value;
    }

    @Override // com.shopify.reactnative.flash_list.CellContainer
    public int getIndex() {
        return this.index;
    }
}
