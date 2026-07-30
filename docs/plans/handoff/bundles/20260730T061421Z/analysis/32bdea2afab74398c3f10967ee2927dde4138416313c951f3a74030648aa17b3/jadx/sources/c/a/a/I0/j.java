package c.a.a.I0;

import android.view.View;
import com.android.launcher3.Workspace;
import com.android.launcher3.folder.Folder;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;

/* loaded from: classes.dex */
public final /* synthetic */ class j implements Workspace.ItemOperator {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ WorkspaceItemInfo f1359a;

    public /* synthetic */ j(WorkspaceItemInfo workspaceItemInfo) {
        this.f1359a = workspaceItemInfo;
    }

    @Override // com.android.launcher3.Workspace.ItemOperator
    public final boolean evaluate(ItemInfo itemInfo, View view) {
        return Folder.d(this.f1359a, itemInfo, view);
    }
}
