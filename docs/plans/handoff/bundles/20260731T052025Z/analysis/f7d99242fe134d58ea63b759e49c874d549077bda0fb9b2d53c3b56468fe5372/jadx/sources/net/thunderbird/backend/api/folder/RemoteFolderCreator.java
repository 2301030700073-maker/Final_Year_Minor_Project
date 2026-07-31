package net.thunderbird.backend.api.folder;

import kotlin.coroutines.jvm.internal.ContinuationImpl;
import net.thunderbird.feature.account.AccountId;
import org.jetbrains.compose.resources.AsyncCache$getOrLoad$2;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public interface RemoteFolderCreator {

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public interface Factory {
        Object create(AccountId accountId, ContinuationImpl continuationImpl);
    }

    /* renamed from: create-rwpFgxY */
    Object mo1024createrwpFgxY(String str, AsyncCache$getOrLoad$2 asyncCache$getOrLoad$2);
}
