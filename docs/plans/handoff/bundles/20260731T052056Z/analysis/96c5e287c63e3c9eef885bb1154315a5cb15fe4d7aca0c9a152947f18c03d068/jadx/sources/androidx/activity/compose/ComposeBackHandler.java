package androidx.activity.compose;

import androidx.appcompat.view.menu.BaseMenuWrapper;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class ComposeBackHandler extends BaseMenuWrapper {
    public Function0 currentOnBackCompleted;

    @Override // androidx.appcompat.view.menu.BaseMenuWrapper
    public final void onBackCompleted() {
        this.currentOnBackCompleted.invoke();
    }
}
