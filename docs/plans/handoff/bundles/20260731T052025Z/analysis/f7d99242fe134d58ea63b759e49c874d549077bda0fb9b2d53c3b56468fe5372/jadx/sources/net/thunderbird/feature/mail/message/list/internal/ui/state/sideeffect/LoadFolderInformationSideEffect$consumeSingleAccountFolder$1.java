package net.thunderbird.feature.mail.message.list.internal.ui.state.sideeffect;

import kotlin.coroutines.jvm.internal.ContinuationImpl;
import net.thunderbird.feature.account.AccountId;
import net.thunderbird.feature.mail.folder.api.Folder;
import net.thunderbird.feature.mail.folder.api.RemoteFolder;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class LoadFolderInformationSideEffect$consumeSingleAccountFolder$1 extends ContinuationImpl {
    public long J$0;
    public AccountId L$0;
    public Folder L$1;
    public RemoteFolder L$2;
    public int label;
    public /* synthetic */ Object result;
    public final /* synthetic */ LoadFolderInformationSideEffect this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LoadFolderInformationSideEffect$consumeSingleAccountFolder$1(LoadFolderInformationSideEffect loadFolderInformationSideEffect, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.this$0 = loadFolderInformationSideEffect;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.consumeSingleAccountFolder(0L, this);
    }
}
