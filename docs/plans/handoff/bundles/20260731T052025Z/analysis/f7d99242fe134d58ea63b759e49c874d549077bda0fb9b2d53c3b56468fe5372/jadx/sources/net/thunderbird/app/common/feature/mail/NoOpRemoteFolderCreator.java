package net.thunderbird.app.common.feature.mail;

import net.thunderbird.backend.api.folder.RemoteFolderCreationOutcome$Success$AlreadyExists;
import net.thunderbird.backend.api.folder.RemoteFolderCreator;
import net.thunderbird.core.outcome.Outcome;
import org.jetbrains.compose.resources.AsyncCache$getOrLoad$2;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class NoOpRemoteFolderCreator implements RemoteFolderCreator {
    public static final NoOpRemoteFolderCreator INSTANCE = new NoOpRemoteFolderCreator();

    @Override // net.thunderbird.backend.api.folder.RemoteFolderCreator
    /* renamed from: create-rwpFgxY, reason: not valid java name */
    public final Object mo1024createrwpFgxY(String str, AsyncCache$getOrLoad$2 asyncCache$getOrLoad$2) {
        return new Outcome.Success(RemoteFolderCreationOutcome$Success$AlreadyExists.INSTANCE);
    }
}
