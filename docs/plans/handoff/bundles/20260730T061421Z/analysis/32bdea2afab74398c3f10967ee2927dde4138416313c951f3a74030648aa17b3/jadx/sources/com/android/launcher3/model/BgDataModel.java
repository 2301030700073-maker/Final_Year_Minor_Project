package com.android.launcher3.model;

import android.content.Context;
import android.content.pm.LauncherApps;
import android.content.pm.ShortcutInfo;
import android.os.UserHandle;
import android.util.Log;
import android.util.MutableInt;
import c.a.a.N0.d0;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.model.data.FolderInfo;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.LauncherAppWidgetInfo;
import com.android.launcher3.model.data.PromiseAppInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.shortcuts.ShortcutKey;
import com.android.launcher3.shortcuts.ShortcutRequest;
import com.android.launcher3.util.ComponentKey;
import com.android.launcher3.util.IntArray;
import com.android.launcher3.util.IntSparseArrayMap;
import com.android.launcher3.util.ItemInfoMatcher;
import com.android.launcher3.util.ViewOnDrawExecutor;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.function.BiConsumer;
import java.util.function.Function;
import java.util.function.Supplier;
import java.util.stream.Collectors;

/* loaded from: classes.dex */
public class BgDataModel {
    public final IntSparseArrayMap itemsIdMap = new IntSparseArrayMap();
    public final ArrayList workspaceItems = new ArrayList();
    public final ArrayList appWidgets = new ArrayList();
    public final IntSparseArrayMap folders = new IntSparseArrayMap();
    public final Map pinnedShortcutCounts = new HashMap();
    public final ArrayList cachedPredictedItems = new ArrayList();
    public final HashMap deepShortcutMap = new HashMap();
    public final WidgetsModel widgetsModel = new WidgetsModel();
    public int lastBindId = 0;

    public interface Callbacks {
        void bindAllApplications(AppInfo[] appInfoArr, int i);

        void bindAllWidgets(ArrayList arrayList);

        void bindAppsAdded(IntArray intArray, ArrayList arrayList, ArrayList arrayList2);

        void bindDeepShortcutMap(HashMap hashMap);

        void bindItems(List list, boolean z);

        void bindPredictedItems(List list, IntArray intArray);

        void bindPromiseAppProgressUpdated(PromiseAppInfo promiseAppInfo);

        void bindRestoreItemsChange(HashSet hashSet);

        void bindScreens(IntArray intArray);

        void bindWidgetsRestored(ArrayList arrayList);

        void bindWorkspaceComponentsRemoved(ItemInfoMatcher itemInfoMatcher);

        void bindWorkspaceItemsChanged(ArrayList arrayList);

        void clearPendingBinds();

        void executeOnNextDraw(ViewOnDrawExecutor viewOnDrawExecutor);

        void finishBindingItems(int i);

        void finishFirstPageBind(ViewOnDrawExecutor viewOnDrawExecutor);

        int getPageToBindSynchronously();

        void onPageBoundSynchronously(int i);

        void preAddApps();

        void startBinding();
    }

    public synchronized void addItem(Context context, ItemInfo itemInfo, boolean z) {
        this.itemsIdMap.put(itemInfo.id, itemInfo);
        int i = itemInfo.itemType;
        if (i != 0 && i != 1) {
            if (i == 2) {
                this.folders.put(itemInfo.id, (FolderInfo) itemInfo);
                this.workspaceItems.add(itemInfo);
            } else if (i == 4 || i == 5) {
                this.appWidgets.add((LauncherAppWidgetInfo) itemInfo);
            } else if (i == 6) {
                ShortcutKey fromIntent = ShortcutKey.fromIntent(itemInfo.getIntent(), itemInfo.user);
                MutableInt mutableInt = (MutableInt) this.pinnedShortcutCounts.get(fromIntent);
                if (mutableInt == null) {
                    mutableInt = new MutableInt(1);
                    this.pinnedShortcutCounts.put(fromIntent, mutableInt);
                } else {
                    mutableInt.value++;
                }
                if (z && mutableInt.value == 1) {
                    updatePinnedShortcuts(context, fromIntent, new BiConsumer() { // from class: c.a.a.N0.d
                        @Override // java.util.function.BiConsumer
                        public final void accept(Object obj, Object obj2) {
                            ((List) obj).add((String) obj2);
                        }
                    });
                }
            }
        }
        if (itemInfo.container != -100 && itemInfo.container != -101) {
            if (!z) {
                FolderInfo findOrMakeFolder = findOrMakeFolder(itemInfo.container);
                findOrMakeFolder.add((WorkspaceItemInfo) itemInfo, findOrMakeFolder.contents.size(), false);
            } else if (!this.folders.containsKey(itemInfo.container)) {
                Log.e("BgDataModel", "adding item: " + itemInfo + " to a folder that  doesn't exist");
            }
        }
        this.workspaceItems.add(itemInfo);
    }

    public synchronized void clear() {
        this.workspaceItems.clear();
        this.appWidgets.clear();
        this.folders.clear();
        this.itemsIdMap.clear();
        this.pinnedShortcutCounts.clear();
        this.deepShortcutMap.clear();
    }

    public synchronized IntArray collectWorkspaceScreens() {
        IntArray intArray;
        int i;
        int binarySearch;
        intArray = new IntArray(10);
        IntSparseArrayMap intSparseArrayMap = this.itemsIdMap;
        Objects.requireNonNull(intSparseArrayMap);
        int i2 = 0;
        while (true) {
            if (!(i2 < intSparseArrayMap.size())) {
                break;
            }
            int i3 = i2 + 1;
            ItemInfo itemInfo = (ItemInfo) intSparseArrayMap.valueAt(i2);
            if (itemInfo.container == -100 && (binarySearch = Arrays.binarySearch(intArray.mValues, 0, intArray.mSize, (i = itemInfo.screenId))) < 0) {
                intArray.add((-binarySearch) - 1, i);
            }
            i2 = i3;
        }
        if (Arrays.binarySearch(intArray.mValues, 0, intArray.mSize, 0) < 0) {
            intArray.add((-r1) - 1, 0);
        }
        return intArray;
    }

    public synchronized FolderInfo findOrMakeFolder(int i) {
        FolderInfo folderInfo;
        folderInfo = (FolderInfo) this.folders.get(i);
        if (folderInfo == null) {
            folderInfo = new FolderInfo();
            this.folders.put(i, folderInfo);
        }
        return folderInfo;
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x003e, code lost:
    
        if (r4 == 0) goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized void removeItem(android.content.Context r6, java.lang.Iterable r7) {
        /*
            r5 = this;
            monitor-enter(r5)
            java.util.Iterator r7 = r7.iterator()     // Catch: java.lang.Throwable -> L72
        L5:
            boolean r0 = r7.hasNext()     // Catch: java.lang.Throwable -> L72
            if (r0 == 0) goto L70
            java.lang.Object r0 = r7.next()     // Catch: java.lang.Throwable -> L72
            com.android.launcher3.model.data.ItemInfo r0 = (com.android.launcher3.model.data.ItemInfo) r0     // Catch: java.lang.Throwable -> L72
            int r1 = r0.itemType     // Catch: java.lang.Throwable -> L72
            if (r1 == 0) goto L63
            r2 = 1
            if (r1 == r2) goto L63
            r3 = 2
            if (r1 == r3) goto L56
            r3 = 4
            if (r1 == r3) goto L50
            r3 = 5
            if (r1 == r3) goto L50
            r3 = 6
            if (r1 == r3) goto L25
            goto L68
        L25:
            android.content.Intent r1 = r0.getIntent()     // Catch: java.lang.Throwable -> L72
            android.os.UserHandle r3 = r0.user     // Catch: java.lang.Throwable -> L72
            com.android.launcher3.shortcuts.ShortcutKey r1 = com.android.launcher3.shortcuts.ShortcutKey.fromIntent(r1, r3)     // Catch: java.lang.Throwable -> L72
            java.util.Map r3 = r5.pinnedShortcutCounts     // Catch: java.lang.Throwable -> L72
            java.lang.Object r3 = r3.get(r1)     // Catch: java.lang.Throwable -> L72
            android.util.MutableInt r3 = (android.util.MutableInt) r3     // Catch: java.lang.Throwable -> L72
            if (r3 == 0) goto L40
            int r4 = r3.value     // Catch: java.lang.Throwable -> L72
            int r4 = r4 - r2
            r3.value = r4     // Catch: java.lang.Throwable -> L72
            if (r4 != 0) goto L63
        L40:
            java.util.HashSet r2 = com.android.launcher3.InstallShortcutReceiver.getPendingShortcuts(r6)     // Catch: java.lang.Throwable -> L72
            boolean r2 = r2.contains(r1)     // Catch: java.lang.Throwable -> L72
            if (r2 != 0) goto L63
            c.a.a.N0.d0 r2 = c.a.a.N0.d0.f1517a     // Catch: java.lang.Throwable -> L72
            r5.updatePinnedShortcuts(r6, r1, r2)     // Catch: java.lang.Throwable -> L72
            goto L63
        L50:
            java.util.ArrayList r1 = r5.appWidgets     // Catch: java.lang.Throwable -> L72
            r1.remove(r0)     // Catch: java.lang.Throwable -> L72
            goto L68
        L56:
            com.android.launcher3.util.IntSparseArrayMap r1 = r5.folders     // Catch: java.lang.Throwable -> L72
            int r2 = r0.id     // Catch: java.lang.Throwable -> L72
            r1.remove(r2)     // Catch: java.lang.Throwable -> L72
            java.util.ArrayList r1 = r5.workspaceItems     // Catch: java.lang.Throwable -> L72
            r1.remove(r0)     // Catch: java.lang.Throwable -> L72
            goto L68
        L63:
            java.util.ArrayList r1 = r5.workspaceItems     // Catch: java.lang.Throwable -> L72
            r1.remove(r0)     // Catch: java.lang.Throwable -> L72
        L68:
            com.android.launcher3.util.IntSparseArrayMap r1 = r5.itemsIdMap     // Catch: java.lang.Throwable -> L72
            int r0 = r0.id     // Catch: java.lang.Throwable -> L72
            r1.remove(r0)     // Catch: java.lang.Throwable -> L72
            goto L5
        L70:
            monitor-exit(r5)
            return
        L72:
            r6 = move-exception
            monitor-exit(r5)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.model.BgDataModel.removeItem(android.content.Context, java.lang.Iterable):void");
    }

    public void unpinShortcut(Context context, ShortcutKey shortcutKey) {
        updatePinnedShortcuts(context, shortcutKey, d0.f1517a);
    }

    public synchronized void updateDeepShortcutCounts(String str, UserHandle userHandle, List list) {
        if (str != null) {
            Iterator it = this.deepShortcutMap.keySet().iterator();
            while (it.hasNext()) {
                ComponentKey componentKey = (ComponentKey) it.next();
                if (componentKey.componentName.getPackageName().equals(str) && componentKey.user.equals(userHandle)) {
                    it.remove();
                }
            }
        }
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            ShortcutInfo shortcutInfo = (ShortcutInfo) it2.next();
            int i = 1;
            if (shortcutInfo.isEnabled() && (shortcutInfo.isDeclaredInManifest() || shortcutInfo.isDynamic()) && shortcutInfo.getActivity() != null) {
                ComponentKey componentKey2 = new ComponentKey(shortcutInfo.getActivity(), shortcutInfo.getUserHandle());
                Integer num = (Integer) this.deepShortcutMap.get(componentKey2);
                HashMap hashMap = this.deepShortcutMap;
                if (num != null) {
                    i = 1 + num.intValue();
                }
                hashMap.put(componentKey2, Integer.valueOf(i));
            }
        }
    }

    public final void updatePinnedShortcuts(Context context, ShortcutKey shortcutKey, BiConsumer biConsumer) {
        ShortcutRequest.QueryResult queryResult;
        String packageName = shortcutKey.componentName.getPackageName();
        String id = shortcutKey.getId();
        UserHandle userHandle = shortcutKey.user;
        LauncherApps.ShortcutQuery shortcutQuery = new LauncherApps.ShortcutQuery();
        if (packageName != null) {
            shortcutQuery.setPackage(packageName);
            shortcutQuery.setShortcutIds(null);
        }
        shortcutQuery.setQueryFlags(2);
        try {
            queryResult = new ShortcutRequest.QueryResult(((LauncherApps) context.getSystemService(LauncherApps.class)).getShortcuts(shortcutQuery, userHandle));
        } catch (IllegalStateException | SecurityException e) {
            Log.e("ShortcutRequest", "Failed to query for shortcuts", e);
            queryResult = ShortcutRequest.QueryResult.DEFAULT;
        }
        List<String> list = (List) queryResult.stream().map(new Function() { // from class: c.a.a.N0.c0
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((ShortcutInfo) obj).getId();
            }
        }).collect(Collectors.toCollection(new Supplier() { // from class: c.a.a.N0.Q
            @Override // java.util.function.Supplier
            public final Object get() {
                return new ArrayList();
            }
        }));
        biConsumer.accept(list, id);
        try {
            ((LauncherApps) context.getSystemService(LauncherApps.class)).pinShortcuts(packageName, list, userHandle);
        } catch (IllegalStateException | SecurityException e2) {
            Log.w("BgDataModel", "Failed to pin shortcut", e2);
        }
    }
}
