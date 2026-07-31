package com.fsck.k9.ui.messagedetails;

import coil3.size.ViewSizeResolver;
import com.fsck.k9.contacts.ContactPictureLoader;
import kotlin.jvm.functions.Function0;
import kotlinx.atomicfu.AtomicFU;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class MessageDetailsFragment$special$$inlined$inject$default$1 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ MessageDetailsFragment $this_inject;

    public /* synthetic */ MessageDetailsFragment$special$$inlined$inject$default$1(MessageDetailsFragment messageDetailsFragment, int i) {
        this.$r8$classId = i;
        this.$this_inject = messageDetailsFragment;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        MessageDetailsFragment messageDetailsFragment = this.$this_inject;
        switch (i) {
            case 0:
                return ViewSizeResolver.CC.m(AddToContactsLauncher.class, AtomicFU.getKoinScope(messageDetailsFragment), (Qualifier) null, (ParametersHolder) null);
            case 1:
                return ViewSizeResolver.CC.m(ShowContactLauncher.class, AtomicFU.getKoinScope(messageDetailsFragment), (Qualifier) null, (ParametersHolder) null);
            case 2:
                return ViewSizeResolver.CC.m(ContactPictureLoader.class, AtomicFU.getKoinScope(messageDetailsFragment), (Qualifier) null, (ParametersHolder) null);
            default:
                return messageDetailsFragment;
        }
    }
}
