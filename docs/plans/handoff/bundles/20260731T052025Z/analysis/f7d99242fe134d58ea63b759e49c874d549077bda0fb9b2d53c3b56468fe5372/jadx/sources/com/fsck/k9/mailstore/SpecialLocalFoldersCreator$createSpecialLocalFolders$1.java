package com.fsck.k9.mailstore;

import kotlin.coroutines.jvm.internal.ContinuationImpl;
import net.thunderbird.core.android.account.LegacyAccountDto;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class SpecialLocalFoldersCreator$createSpecialLocalFolders$1 extends ContinuationImpl {
    public LegacyAccountDto L$0;
    public LocalStore L$1;
    public int label;
    public /* synthetic */ Object result;
    public final /* synthetic */ SpecialLocalFoldersCreator this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SpecialLocalFoldersCreator$createSpecialLocalFolders$1(SpecialLocalFoldersCreator specialLocalFoldersCreator, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.this$0 = specialLocalFoldersCreator;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.createSpecialLocalFolders(null, this);
    }
}
