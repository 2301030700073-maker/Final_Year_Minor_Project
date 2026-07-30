package com.android.launcher3.folder;

import android.content.ComponentName;
import android.content.Context;
import android.os.Process;
import android.text.TextUtils;
import android.util.Log;
import b.l.W;
import c.a.c.a.a;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.folder.FolderNameProvider;
import com.android.launcher3.model.AllAppsList;
import com.android.launcher3.model.BaseModelUpdateTask;
import com.android.launcher3.model.BgDataModel;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.util.IntSparseArrayMap;
import com.android.launcher3.util.ResourceBasedOverride;
import com.android.systemui.shared.R;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import java.util.Optional;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Collectors;

/* loaded from: classes.dex */
public class FolderNameProvider implements ResourceBasedOverride {
    public List mAppInfos;
    public IntSparseArrayMap mFolderInfos;

    public class FolderNameWorker extends BaseModelUpdateTask {
        public FolderNameWorker(AnonymousClass1 anonymousClass1) {
        }

        @Override // com.android.launcher3.model.BaseModelUpdateTask
        public void execute(LauncherAppState launcherAppState, BgDataModel bgDataModel, AllAppsList allAppsList) {
            FolderNameProvider.this.mFolderInfos = bgDataModel.folders.clone();
            FolderNameProvider.this.mAppInfos = Arrays.asList(allAppsList.copyData());
        }
    }

    public static FolderNameProvider newInstance(Context context) {
        FolderNameProvider folderNameProvider = (FolderNameProvider) W.getObject(FolderNameProvider.class, context.getApplicationContext(), R.string.folder_name_provider_class);
        Objects.requireNonNull(folderNameProvider);
        LauncherAppState.getInstance(context).mModel.enqueueModelUpdateTask(folderNameProvider.new FolderNameWorker(null));
        return folderNameProvider;
    }

    public void a(FolderNameInfos folderNameInfos, AppInfo appInfo) {
        String charSequence = appInfo.title.toString();
        if (folderNameInfos == null || folderNameInfos.contains(charSequence)) {
            return;
        }
        folderNameInfos.setStatus(2);
        folderNameInfos.setStatus(4);
        CharSequence[] charSequenceArr = folderNameInfos.mLabels;
        Float[] fArr = folderNameInfos.mScores;
        int length = charSequenceArr.length - 1;
        while (length > 0) {
            int i = length - 1;
            if (charSequenceArr[i] != null && !TextUtils.isEmpty(charSequenceArr[i])) {
                folderNameInfos.setLabel(length, charSequenceArr[i], fArr[i]);
            }
            length = i;
        }
        folderNameInfos.setLabel(0, charSequence, Float.valueOf(1.0f));
    }

    public void getSuggestedFolderName(Context context, ArrayList arrayList, final FolderNameInfos folderNameInfos) {
        StringBuilder f = a.f("getSuggestedFolderName:");
        f.append(folderNameInfos.toString());
        Log.d("FolderNameProvider", f.toString());
        Set set = (Set) arrayList.stream().map(new Function() { // from class: c.a.a.I0.o
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((WorkspaceItemInfo) obj).user;
            }
        }).collect(Collectors.toSet());
        if (set.size() == 1 && !set.contains(Process.myUserHandle())) {
            String string = context.getResources().getString(R.string.work_folder_name);
            if (!folderNameInfos.contains(string)) {
                folderNameInfos.setStatus(2);
                folderNameInfos.setStatus(4);
                CharSequence[] charSequenceArr = folderNameInfos.mLabels;
                for (int i = 0; i < charSequenceArr.length; i++) {
                    if (charSequenceArr[i] == null || TextUtils.isEmpty(charSequenceArr[i])) {
                        folderNameInfos.setLabel(i, string, Float.valueOf(1.0f));
                        break;
                    }
                }
                folderNameInfos.setLabel(charSequenceArr.length - 1, string, Float.valueOf(1.0f));
            }
        }
        Set set2 = (Set) arrayList.stream().map(new Function() { // from class: c.a.a.I0.B
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((WorkspaceItemInfo) obj).getTargetComponent();
            }
        }).filter(new Predicate() { // from class: c.a.a.I0.z
            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return Objects.nonNull((ComponentName) obj);
            }
        }).map(new Function() { // from class: c.a.a.I0.a
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((ComponentName) obj).getPackageName();
            }
        }).collect(Collectors.toSet());
        if (set2.size() == 1) {
            final String str = (String) set2.iterator().next();
            List list = this.mAppInfos;
            ((list == null || list.isEmpty()) ? Optional.empty() : this.mAppInfos.stream().filter(new Predicate() { // from class: c.a.a.I0.r
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    return ((AppInfo) obj).componentName != null;
                }
            }).filter(new Predicate() { // from class: c.a.a.I0.q
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    return ((AppInfo) obj).componentName.getPackageName().equals(str);
                }
            }).findAny()).ifPresent(new Consumer() { // from class: c.a.a.I0.p
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    FolderNameProvider.this.a(folderNameInfos, (AppInfo) obj);
                }
            });
        }
        StringBuilder f2 = a.f("getSuggestedFolderName:");
        f2.append(folderNameInfos.toString());
        Log.d("FolderNameProvider", f2.toString());
    }
}
