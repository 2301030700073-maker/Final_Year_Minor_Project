package com.fsck.k9.ui.choosefolder;

import androidx.lifecycle.ViewModel;
import app.k9mail.legacy.ui.folder.DefaultDisplayFolderRepository;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.SharedFlowImpl;
import kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ChooseFolderViewModel extends ViewModel {
    public final DefaultDisplayFolderRepository folderRepository;
    public final ChannelFlowTransformLatest foldersFlow;
    public final SharedFlowImpl inputFlow;
    public boolean isShowHiddenFolders;

    public ChooseFolderViewModel(DefaultDisplayFolderRepository defaultDisplayFolderRepository) {
        this.folderRepository = defaultDisplayFolderRepository;
        SharedFlowImpl MutableSharedFlow$default = FlowKt.MutableSharedFlow$default(0, 6, null);
        this.inputFlow = MutableSharedFlow$default;
        this.foldersFlow = FlowKt.transformLatest(MutableSharedFlow$default, new ChooseFolderViewModel$special$$inlined$flatMapLatest$1(null, this, 0));
    }
}
