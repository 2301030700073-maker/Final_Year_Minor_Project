package com.fsck.k9.ui.managefolders;

import app.k9mail.legacy.ui.folder.FolderNameFormatter;
import coil3.size.ViewSizeResolver;
import kotlin.jvm.functions.Function0;
import kotlinx.atomicfu.AtomicFU;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.qualifier.Qualifier;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FolderSettingsFragment$special$$inlined$inject$default$1 implements Function0 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ FolderSettingsFragment $this_inject;

    public /* synthetic */ FolderSettingsFragment$special$$inlined$inject$default$1(FolderSettingsFragment folderSettingsFragment, int i) {
        this.$r8$classId = i;
        this.$this_inject = folderSettingsFragment;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        int i = this.$r8$classId;
        FolderSettingsFragment folderSettingsFragment = this.$this_inject;
        switch (i) {
            case 0:
                return ViewSizeResolver.CC.m(FolderNameFormatter.class, AtomicFU.getKoinScope(folderSettingsFragment), (Qualifier) null, (ParametersHolder) null);
            default:
                return folderSettingsFragment;
        }
    }
}
