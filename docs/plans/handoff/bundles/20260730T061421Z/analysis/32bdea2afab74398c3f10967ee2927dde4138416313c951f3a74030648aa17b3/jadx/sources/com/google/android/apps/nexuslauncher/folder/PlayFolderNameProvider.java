package com.google.android.apps.nexuslauncher.folder;

import android.content.Context;
import c.b.a.b.b.g.r;
import c.b.a.b.b.g.t;
import com.android.launcher3.folder.FolderNameInfos;
import com.android.launcher3.folder.FolderNameProvider;
import com.android.launcher3.util.IntSparseArrayMap;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class PlayFolderNameProvider extends FolderNameProvider {

    /* renamed from: a, reason: collision with root package name */
    public t f3289a;

    public PlayFolderNameProvider(Context context) {
        this.f3289a = new r(context);
    }

    @Override // com.android.launcher3.folder.FolderNameProvider
    public void getSuggestedFolderName(Context context, ArrayList arrayList, FolderNameInfos folderNameInfos) {
        getSuggestedFolderNameFromCategoryProvider(context, arrayList, folderNameInfos);
        super.getSuggestedFolderName(context, arrayList, folderNameInfos);
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x01e6 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:98:0x01ec A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void getSuggestedFolderNameFromCategoryProvider(android.content.Context r13, java.util.ArrayList r14, com.android.launcher3.folder.FolderNameInfos r15) {
        /*
            Method dump skipped, instructions count: 603
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.apps.nexuslauncher.folder.PlayFolderNameProvider.getSuggestedFolderNameFromCategoryProvider(android.content.Context, java.util.ArrayList, com.android.launcher3.folder.FolderNameInfos):void");
    }

    public PlayFolderNameProvider(t tVar) {
        this.f3289a = tVar;
        if (this.mFolderInfos == null) {
            this.mFolderInfos = new IntSparseArrayMap();
        }
    }
}
