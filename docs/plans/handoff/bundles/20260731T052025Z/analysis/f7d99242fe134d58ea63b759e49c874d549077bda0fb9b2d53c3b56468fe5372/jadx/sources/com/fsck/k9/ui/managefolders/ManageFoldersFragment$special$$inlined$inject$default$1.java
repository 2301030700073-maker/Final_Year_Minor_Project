package com.fsck.k9.ui.managefolders;

import app.k9mail.legacy.ui.folder.FolderNameFormatter;
import com.fsck.k9.Preferences;
import com.fsck.k9.controller.MessagingController;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Reflection;
import kotlinx.atomicfu.AtomicFU;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ManageFoldersFragment$special$$inlined$inject$default$1 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ ManageFoldersFragment $this_inject;

    public /* synthetic */ ManageFoldersFragment$special$$inlined$inject$default$1(ManageFoldersFragment manageFoldersFragment, int i) {
        this.$r8$classId = i;
        this.$this_inject = manageFoldersFragment;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        ManageFoldersFragment manageFoldersFragment = this.$this_inject;
        switch (i) {
            case 0:
                return AtomicFU.getKoinScope(manageFoldersFragment).resolve(Reflection.getOrCreateKotlinClass(FolderNameFormatter.class), null, null);
            case 1:
                return AtomicFU.getKoinScope(manageFoldersFragment).resolve(Reflection.getOrCreateKotlinClass(MessagingController.class), null, null);
            case 2:
                return AtomicFU.getKoinScope(manageFoldersFragment).resolve(Reflection.getOrCreateKotlinClass(Preferences.class), null, null);
            default:
                return manageFoldersFragment;
        }
    }
}
