package org.fdroid.fdroid.views.repos;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* compiled from: RepoDetailsScreen.kt */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes2.dex */
/* synthetic */ class RepoDetailsScreenKt$RepoDetailsScreen$1$2$4$1 extends FunctionReferenceImpl implements Function0 {
    RepoDetailsScreenKt$RepoDetailsScreen$1$2$4$1(Object obj) {
        super(0, obj, RepoDetailsScreenCallbacks.class, "onInfoClicked", "onInfoClicked()V", 0);
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Object invoke() {
        m3239invoke();
        return Unit.INSTANCE;
    }

    /* renamed from: invoke, reason: collision with other method in class */
    public final void m3239invoke() {
        ((RepoDetailsScreenCallbacks) this.receiver).onInfoClicked();
    }
}
