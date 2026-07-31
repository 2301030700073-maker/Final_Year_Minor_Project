package net.thunderbird.feature.mail.message.list.internal.domain.usecase;

import com.eygraber.uri.Uri;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function2;
import net.thunderbird.core.android.account.LegacyAccount;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class CreateArchiveFolder$handleRemoteFolderCreationSuccess$1 extends ContinuationImpl {
    public long J$0;
    public LegacyAccount L$1;
    public Function2 L$2;
    public Uri.Builder L$3;
    public int label;
    public /* synthetic */ Object result;
    public final /* synthetic */ CreateArchiveFolder this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CreateArchiveFolder$handleRemoteFolderCreationSuccess$1(CreateArchiveFolder createArchiveFolder, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.this$0 = createArchiveFolder;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return CreateArchiveFolder.access$handleRemoteFolderCreationSuccess(this.this$0, 0L, null, null, null, this);
    }
}
