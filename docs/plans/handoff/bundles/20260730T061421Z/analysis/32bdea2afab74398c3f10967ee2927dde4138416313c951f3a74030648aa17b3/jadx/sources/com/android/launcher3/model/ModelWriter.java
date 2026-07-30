package com.android.launcher3.model;

import android.content.ContentProviderOperation;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import c.a.a.N0.J;
import c.a.c.a.a;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.LauncherAppWidgetHost;
import com.android.launcher3.LauncherModel;
import com.android.launcher3.LauncherSettings$Favorites;
import com.android.launcher3.LauncherSettings$Settings;
import com.android.launcher3.Utilities;
import com.android.launcher3.logging.FileLog;
import com.android.launcher3.model.BgDataModel;
import com.android.launcher3.model.ModelWriter;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.LauncherAppWidgetInfo;
import com.android.launcher3.model.data.WorkspaceItemInfo;
import com.android.launcher3.util.ContentWriter;
import com.android.launcher3.util.Executors;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.function.Function;
import java.util.function.Supplier;
import java.util.stream.Collectors;

/* loaded from: classes.dex */
public class ModelWriter {
    public final BgDataModel mBgDataModel;
    public final Context mContext;
    public final boolean mHasVerticalHotseat;
    public final LauncherModel mModel;
    public boolean mPreparingToUndo;
    public final boolean mVerifyChanges;
    public final List mDeleteRunnables = new ArrayList();
    public final Handler mUiHandler = new Handler(Looper.getMainLooper());

    public class ModelVerifier {
        public final int startId;

        public ModelVerifier() {
            this.startId = ModelWriter.this.mBgDataModel.lastBindId;
        }

        public void verifyModel() {
            ModelWriter modelWriter = ModelWriter.this;
            if (modelWriter.mVerifyChanges && modelWriter.mModel.hasCallbacks()) {
                ModelWriter modelWriter2 = ModelWriter.this;
                final int i = modelWriter2.mBgDataModel.lastBindId;
                modelWriter2.mUiHandler.post(new Runnable() { // from class: c.a.a.N0.I
                    @Override // java.lang.Runnable
                    public final void run() {
                        ModelWriter.ModelVerifier modelVerifier = ModelWriter.ModelVerifier.this;
                        int i2 = i;
                        ModelWriter modelWriter3 = ModelWriter.this;
                        if (modelWriter3.mBgDataModel.lastBindId <= i2 && i2 != modelVerifier.startId) {
                            LauncherModel launcherModel = modelWriter3.mModel;
                            if (launcherModel.hasCallbacks()) {
                                launcherModel.startLoader();
                            }
                        }
                    }
                });
            }
        }
    }

    public abstract class UpdateItemBaseRunnable implements Runnable {
        public final StackTraceElement[] mStackTrace = new Throwable().getStackTrace();
        public final ModelVerifier mVerifier;

        public UpdateItemBaseRunnable() {
            this.mVerifier = ModelWriter.this.new ModelVerifier();
        }

        public void updateItemArrays(ItemInfo itemInfo, int i) {
            synchronized (ModelWriter.this.mBgDataModel) {
                ModelWriter.this.checkItemInfoLocked(i, itemInfo, this.mStackTrace);
                if (itemInfo.container != -100 && itemInfo.container != -101 && !ModelWriter.this.mBgDataModel.folders.containsKey(itemInfo.container)) {
                    Log.e("ModelWriter", "item: " + itemInfo + " container being set to: " + itemInfo.container + ", not in the list of folders");
                }
                ItemInfo itemInfo2 = (ItemInfo) ModelWriter.this.mBgDataModel.itemsIdMap.get(i);
                if (itemInfo2 == null || !(itemInfo2.container == -100 || itemInfo2.container == -101)) {
                    ModelWriter.this.mBgDataModel.workspaceItems.remove(itemInfo2);
                } else {
                    int i2 = itemInfo2.itemType;
                    if ((i2 == 0 || i2 == 1 || i2 == 2 || i2 == 6) && !ModelWriter.this.mBgDataModel.workspaceItems.contains(itemInfo2)) {
                        ModelWriter.this.mBgDataModel.workspaceItems.add(itemInfo2);
                    }
                }
                this.mVerifier.verifyModel();
            }
        }
    }

    public class UpdateItemRunnable extends UpdateItemBaseRunnable {
        public final ItemInfo mItem;
        public final int mItemId;
        public final Supplier mWriter;

        public UpdateItemRunnable(ItemInfo itemInfo, Supplier supplier) {
            super();
            this.mItem = itemInfo;
            this.mWriter = supplier;
            this.mItemId = itemInfo.id;
        }

        @Override // java.lang.Runnable
        public void run() {
            ModelWriter.this.mContext.getContentResolver().update(LauncherSettings$Favorites.getContentUri(this.mItemId), ((ContentWriter) this.mWriter.get()).getValues(ModelWriter.this.mContext), null, null);
            updateItemArrays(this.mItem, this.mItemId);
        }
    }

    public class UpdateItemsRunnable extends UpdateItemBaseRunnable {
        public final ArrayList mItems;
        public final ArrayList mValues;

        public UpdateItemsRunnable(ArrayList arrayList, ArrayList arrayList2) {
            super();
            this.mValues = arrayList2;
            this.mItems = arrayList;
        }

        @Override // java.lang.Runnable
        public void run() {
            ArrayList<ContentProviderOperation> arrayList = new ArrayList<>();
            int size = this.mItems.size();
            for (int i = 0; i < size; i++) {
                ItemInfo itemInfo = (ItemInfo) this.mItems.get(i);
                int i2 = itemInfo.id;
                Uri contentUri = LauncherSettings$Favorites.getContentUri(i2);
                arrayList.add(ContentProviderOperation.newUpdate(contentUri).withValues((ContentValues) this.mValues.get(i)).build());
                updateItemArrays(itemInfo, i2);
            }
            try {
                ModelWriter.this.mContext.getContentResolver().applyBatch("com.google.android.apps.nexuslauncher.settings", arrayList);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public ModelWriter(Context context, LauncherModel launcherModel, BgDataModel bgDataModel, boolean z, boolean z2) {
        this.mContext = context;
        this.mModel = launcherModel;
        this.mBgDataModel = bgDataModel;
        this.mHasVerticalHotseat = z;
        this.mVerifyChanges = z2;
    }

    public void addItemToDatabase(final ItemInfo itemInfo, int i, int i2, int i3, int i4) {
        updateItemInfoProps(itemInfo, i, i2, i3, i4);
        final ContentResolver contentResolver = this.mContext.getContentResolver();
        itemInfo.id = LauncherSettings$Settings.call(contentResolver, "generate_new_item_id").getInt("value");
        final ModelVerifier modelVerifier = new ModelVerifier();
        final StackTraceElement[] stackTrace = new Throwable().getStackTrace();
        Executors.MODEL_EXECUTOR.execute(new Runnable() { // from class: c.a.a.N0.O
            @Override // java.lang.Runnable
            public final void run() {
                ModelWriter modelWriter = ModelWriter.this;
                ItemInfo itemInfo2 = itemInfo;
                ContentResolver contentResolver2 = contentResolver;
                StackTraceElement[] stackTraceElementArr = stackTrace;
                ModelWriter.ModelVerifier modelVerifier2 = modelVerifier;
                ContentWriter contentWriter = new ContentWriter(modelWriter.mContext);
                itemInfo2.onAddToDatabase(contentWriter);
                contentWriter.mValues.put("_id", Integer.valueOf(itemInfo2.id));
                contentResolver2.insert(LauncherSettings$Favorites.CONTENT_URI, contentWriter.getValues(modelWriter.mContext));
                synchronized (modelWriter.mBgDataModel) {
                    modelWriter.checkItemInfoLocked(itemInfo2.id, itemInfo2, stackTraceElementArr);
                    modelWriter.mBgDataModel.addItem(modelWriter.mContext, itemInfo2, true);
                    modelVerifier2.verifyModel();
                }
            }
        });
    }

    public void addOrMoveItemInDatabase(ItemInfo itemInfo, int i, int i2, int i3, int i4) {
        if (itemInfo.id == -1) {
            addItemToDatabase(itemInfo, i, i2, i3, i4);
        } else {
            updateItemInfoProps(itemInfo, i, i2, i3, i4);
            enqueueDeleteRunnable(new UpdateItemRunnable(itemInfo, new J(this, itemInfo)));
        }
    }

    public final void checkItemInfoLocked(int i, ItemInfo itemInfo, StackTraceElement[] stackTraceElementArr) {
        ItemInfo itemInfo2 = (ItemInfo) this.mBgDataModel.itemsIdMap.get(i);
        if (itemInfo2 == null || itemInfo == itemInfo2) {
            return;
        }
        if (!Utilities.IS_DEBUG_DEVICE && (itemInfo2 instanceof WorkspaceItemInfo) && (itemInfo instanceof WorkspaceItemInfo) && itemInfo2.title.toString().equals(itemInfo.title.toString()) && itemInfo2.getIntent().filterEquals(itemInfo.getIntent()) && itemInfo2.id == itemInfo.id && itemInfo2.itemType == itemInfo.itemType && itemInfo2.container == itemInfo.container && itemInfo2.screenId == itemInfo.screenId && itemInfo2.cellX == itemInfo.cellX && itemInfo2.cellY == itemInfo.cellY && itemInfo2.spanX == itemInfo.spanX && itemInfo2.spanY == itemInfo.spanY) {
            return;
        }
        StringBuilder f = a.f("item: ");
        f.append(itemInfo != null ? itemInfo.toString() : "null");
        f.append("modelItem: ");
        f.append(itemInfo2.toString());
        f.append("Error: ItemInfo passed to checkItemInfo doesn't match original");
        RuntimeException runtimeException = new RuntimeException(f.toString());
        if (stackTraceElementArr == null) {
            throw runtimeException;
        }
        runtimeException.setStackTrace(stackTraceElementArr);
        throw runtimeException;
    }

    public void commitDelete() {
        this.mPreparingToUndo = false;
        Iterator it = this.mDeleteRunnables.iterator();
        while (it.hasNext()) {
            Executors.MODEL_EXECUTOR.execute((Runnable) it.next());
        }
        this.mDeleteRunnables.clear();
    }

    public void deleteItemFromDatabase(ItemInfo itemInfo) {
        deleteItemsFromDatabase(Arrays.asList(itemInfo));
    }

    public void deleteItemsFromDatabase(final Collection collection) {
        final ModelVerifier modelVerifier = new ModelVerifier();
        StringBuilder f = a.f("removing items from db ");
        f.append((String) collection.stream().map(new Function() { // from class: c.a.a.N0.M
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                ItemInfo itemInfo = (ItemInfo) obj;
                return itemInfo.getTargetComponent() == null ? "" : itemInfo.getTargetComponent().getPackageName();
            }
        }).collect(Collectors.joining(",")));
        FileLog.d("ModelWriter", f.toString(), new Exception());
        enqueueDeleteRunnable(new Runnable() { // from class: c.a.a.N0.H
            @Override // java.lang.Runnable
            public final void run() {
                ModelWriter modelWriter = ModelWriter.this;
                Collection<ItemInfo> collection2 = collection;
                ModelWriter.ModelVerifier modelVerifier2 = modelVerifier;
                Objects.requireNonNull(modelWriter);
                for (ItemInfo itemInfo : collection2) {
                    modelWriter.mContext.getContentResolver().delete(LauncherSettings$Favorites.getContentUri(itemInfo.id), null, null);
                    BgDataModel bgDataModel = modelWriter.mBgDataModel;
                    Context context = modelWriter.mContext;
                    ItemInfo[] itemInfoArr = {itemInfo};
                    synchronized (bgDataModel) {
                        bgDataModel.removeItem(context, Arrays.asList(itemInfoArr));
                    }
                    modelVerifier2.verifyModel();
                }
            }
        });
    }

    public void deleteWidgetInfo(final LauncherAppWidgetInfo launcherAppWidgetInfo, final LauncherAppWidgetHost launcherAppWidgetHost) {
        if (launcherAppWidgetHost != null) {
            if (!(launcherAppWidgetInfo.appWidgetId <= -100)) {
                int i = launcherAppWidgetInfo.restoreStatus;
                if ((i & 1) == 0 || (i & 16) == 16) {
                    enqueueDeleteRunnable(new Runnable() { // from class: c.a.a.N0.G
                        @Override // java.lang.Runnable
                        public final void run() {
                            LauncherAppWidgetHost.this.deleteAppWidgetId(launcherAppWidgetInfo.appWidgetId);
                        }
                    });
                }
            }
        }
        deleteItemFromDatabase(launcherAppWidgetInfo);
    }

    public final void enqueueDeleteRunnable(Runnable runnable) {
        if (this.mPreparingToUndo) {
            this.mDeleteRunnables.add(runnable);
        } else {
            Executors.MODEL_EXECUTOR.execute(runnable);
        }
    }

    public void moveItemInDatabase(ItemInfo itemInfo, int i, int i2, int i3, int i4) {
        updateItemInfoProps(itemInfo, i, i2, i3, i4);
        enqueueDeleteRunnable(new UpdateItemRunnable(itemInfo, new J(this, itemInfo)));
    }

    public void updateItemInDatabase(final ItemInfo itemInfo) {
        Executors.MODEL_EXECUTOR.execute(new UpdateItemRunnable(itemInfo, new Supplier() { // from class: c.a.a.N0.K
            @Override // java.util.function.Supplier
            public final Object get() {
                ModelWriter modelWriter = ModelWriter.this;
                ItemInfo itemInfo2 = itemInfo;
                ContentWriter contentWriter = new ContentWriter(modelWriter.mContext);
                itemInfo2.onAddToDatabase(contentWriter);
                return contentWriter;
            }
        }));
    }

    public final void updateItemInfoProps(ItemInfo itemInfo, int i, int i2, int i3, int i4) {
        itemInfo.container = i;
        itemInfo.cellX = i3;
        itemInfo.cellY = i4;
        if (i != -101) {
            itemInfo.screenId = i2;
            return;
        }
        if (this.mHasVerticalHotseat) {
            i3 = (LauncherAppState.getIDP(this.mContext).numHotseatIcons - i4) - 1;
        }
        itemInfo.screenId = i3;
    }
}
