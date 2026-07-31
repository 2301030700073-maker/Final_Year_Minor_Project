package com.fsck.k9.ui.choosefolder;

import androidx.recyclerview.widget.RecyclerView;
import app.k9mail.legacy.ui.folder.DisplayFolder;
import app.k9mail.legacy.ui.folder.FolderIconProvider;
import app.k9mail.legacy.ui.folder.FolderNameFormatter;
import com.fsck.k9.ui.KoinModuleKt$$ExternalSyntheticLambda0;
import com.mikepenz.fastadapter.adapters.ItemAdapter;
import java.util.Iterator;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.FilteringSequence;
import kotlin.sequences.SequencesKt;
import kotlin.sequences.TakeWhileSequence;
import kotlin.text.StringsKt__StringsKt$lineSequence$$inlined$Sequence$1;
import net.thunderbird.feature.mail.folder.api.Folder;
import net.thunderbird.feature.mail.folder.api.FolderType;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final /* synthetic */ class ChooseFolderActivity$$ExternalSyntheticLambda1 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ ChooseFolderActivity f$0;

    public /* synthetic */ ChooseFolderActivity$$ExternalSyntheticLambda1(ChooseFolderActivity chooseFolderActivity, int i) {
        this.$r8$classId = i;
        this.f$0 = chooseFolderActivity;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        int i2 = 0;
        r1 = false;
        boolean z = false;
        int i3 = 1;
        ChooseFolderActivity chooseFolderActivity = this.f$0;
        switch (i) {
            case 0:
                List list = (List) obj;
                int i4 = ChooseFolderActivity.$r8$clinit;
                list.getClass();
                int i5 = 2;
                List list2 = SequencesKt.toList(new TakeWhileSequence(new FilteringSequence(new FilteringSequence(new StringsKt__StringsKt$lineSequence$$inlined$Sequence$1(i5, list), false, new KoinModuleKt$$ExternalSyntheticLambda0(26)), false, new ChooseFolderActivity$$ExternalSyntheticLambda1(chooseFolderActivity, i3)), new ChooseFolderActivity$$ExternalSyntheticLambda1(chooseFolderActivity, i5), 2));
                ItemAdapter itemAdapter = chooseFolderActivity.itemAdapter;
                if (itemAdapter == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("itemAdapter");
                    throw null;
                }
                itemAdapter.setInternal(itemAdapter.intercept(list2), true);
                if (chooseFolderActivity.scrollToFolderId != null) {
                    Iterator it = list2.iterator();
                    while (true) {
                        if (it.hasNext()) {
                            long j = ((FolderListItem) it.next()).databaseId;
                            Long l = chooseFolderActivity.scrollToFolderId;
                            if (l == null || j != l.longValue()) {
                                i2++;
                            }
                        } else {
                            i2 = -1;
                        }
                    }
                    if (i2 != -1) {
                        RecyclerView recyclerView = chooseFolderActivity.recyclerView;
                        if (recyclerView == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("recyclerView");
                            throw null;
                        }
                        recyclerView.scrollToPosition(i2);
                    }
                    chooseFolderActivity.scrollToFolderId = null;
                }
                return Unit.INSTANCE;
            case 1:
                DisplayFolder displayFolder = (DisplayFolder) obj;
                int i6 = ChooseFolderActivity.$r8$clinit;
                displayFolder.getClass();
                long j2 = displayFolder.folder.id;
                Long l2 = chooseFolderActivity.currentFolderId;
                if (l2 != null && j2 == l2.longValue()) {
                    z = true;
                }
                return Boolean.valueOf(z);
            default:
                DisplayFolder displayFolder2 = (DisplayFolder) obj;
                int i7 = ChooseFolderActivity.$r8$clinit;
                displayFolder2.getClass();
                Folder folder = displayFolder2.folder;
                long j3 = folder.id;
                FolderIconProvider folderIconProvider = (FolderIconProvider) chooseFolderActivity.folderIconProvider$delegate.getValue();
                FolderType folderType = folder.type;
                folderIconProvider.getClass();
                return new FolderListItem(FolderIconProvider.getFolderIcon(folderType), j3, ((FolderNameFormatter) chooseFolderActivity.folderNameFormatter$delegate.getValue()).displayName(folder));
        }
    }
}
