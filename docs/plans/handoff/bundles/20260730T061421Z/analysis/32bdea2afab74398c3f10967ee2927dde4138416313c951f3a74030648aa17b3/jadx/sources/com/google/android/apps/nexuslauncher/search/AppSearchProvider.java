package com.google.android.apps.nexuslauncher.search;

import android.annotation.TargetApi;
import android.content.ComponentName;
import android.content.ContentProvider;
import android.content.ContentValues;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Picture;
import android.net.Uri;
import android.os.Bundle;
import android.os.Looper;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import c.b.a.b.b.n.f;
import c.b.a.b.b.n.h;
import c.b.a.b.b.n.i;
import c.b.a.b.b.n.j;
import com.android.launcher3.FastBitmapDrawable;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.appprediction.InstantAppItemInfo;
import com.android.launcher3.icons.GraphicsUtils;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.model.data.ItemInfoWithIcon;
import com.android.launcher3.util.Executors;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

@TargetApi(29)
/* loaded from: classes.dex */
public class AppSearchProvider extends ContentProvider {

    /* renamed from: b, reason: collision with root package name */
    public static final String[] f3324b = {"_id", "suggest_text_1", "suggest_icon_1", "suggest_intent_action", "suggest_intent_data"};

    /* renamed from: a, reason: collision with root package name */
    public final ContentProvider.PipeDataWriter f3325a = new f(this);

    public static Uri a(ComponentName componentName, ItemInfo itemInfo) {
        Uri.Builder appendQueryParameter = new Uri.Builder().scheme("content").authority("com.google.android.apps.nexuslauncher.appssearch").appendQueryParameter("component", componentName.flattenToShortString()).appendQueryParameter("user", Integer.toString(itemInfo.user.getIdentifier()));
        if (itemInfo.isDisabled()) {
            appendQueryParameter.appendQueryParameter("isDisabled", "true");
        }
        if (itemInfo instanceof InstantAppItemInfo) {
            appendQueryParameter.appendQueryParameter("instant-intent", itemInfo.getIntent().toUri(0));
        }
        return appendQueryParameter.build();
    }

    public static Bitmap b(ItemInfoWithIcon itemInfoWithIcon) {
        if (!itemInfoWithIcon.isDisabled()) {
            return itemInfoWithIcon.bitmap.icon;
        }
        Bitmap bitmap = itemInfoWithIcon.bitmap.icon;
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        FastBitmapDrawable fastBitmapDrawable = new FastBitmapDrawable(bitmap, 0, false);
        fastBitmapDrawable.setIsDisabled(true);
        fastBitmapDrawable.setBounds(0, 0, width, height);
        if (bitmap.getConfig() != Bitmap.Config.HARDWARE) {
            GraphicsUtils.noteNewBitmapCreated();
            Bitmap createBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
            fastBitmapDrawable.draw(new Canvas(createBitmap));
            return createBitmap;
        }
        GraphicsUtils.noteNewBitmapCreated();
        Picture picture = new Picture();
        fastBitmapDrawable.draw(picture.beginRecording(width, height));
        picture.endRecording();
        return Bitmap.createBitmap(picture);
    }

    @Override // android.content.ContentProvider
    public Bundle call(String str, String str2, Bundle bundle) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            Log.d("AppSearchProvider", "Content provider accessed on main thread");
            return null;
        }
        if (!"loadIcon".equals(str)) {
            return super.call(str, str2, bundle);
        }
        try {
            Bitmap bitmap = (Bitmap) Executors.MODEL_EXECUTOR.submit(new i(this, Uri.parse(str2))).get();
            Bundle bundle2 = new Bundle();
            bundle2.putParcelable("suggest_icon_1", bitmap);
            return bundle2;
        } catch (Exception e) {
            Log.e("AppSearchProvider", "Unable to load icon " + e);
            return null;
        }
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        throw new UnsupportedOperationException();
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        return "vnd.android.cursor.dir/vnd.android.search.suggest";
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        throw new UnsupportedOperationException();
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        return true;
    }

    @Override // android.content.ContentProvider
    public ParcelFileDescriptor openFile(Uri uri, String str) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            Log.e("AppSearchProvider", "Content provider accessed on main thread");
            return null;
        }
        try {
            return openPipeHelper(uri, "image/png", null, Executors.MODEL_EXECUTOR.submit(new i(this, uri)), this.f3325a);
        } catch (Exception e) {
            throw new FileNotFoundException(e.getMessage());
        }
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        List<h> arrayList;
        String[] strArr3 = f3324b;
        int i = 0;
        if (Looper.myLooper() == Looper.getMainLooper()) {
            Log.e("AppSearchProvider", "Content provider accessed on main thread");
            return new MatrixCursor(strArr3, 0);
        }
        String lastPathSegment = uri.getLastPathSegment();
        System.currentTimeMillis();
        j jVar = new j(lastPathSegment);
        LauncherAppState.getInstance(getContext()).mModel.enqueueModelUpdateTask(jVar);
        try {
            arrayList = (List) jVar.f2758b.get(5L, TimeUnit.SECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e) {
            Log.d("AppSearchProvider", "Error searching apps", e);
            arrayList = new ArrayList();
        }
        int length = lastPathSegment.length();
        MatrixCursor matrixCursor = new MatrixCursor(strArr3, arrayList.size());
        for (h hVar : arrayList) {
            AppInfo appInfo = hVar.f2752a;
            String uri2 = a(appInfo.componentName, appInfo).buildUpon().appendQueryParameter("searchQueryLength", Integer.toString(length)).appendQueryParameter("searchResultSource", Integer.toString(hVar.f2753b)).appendQueryParameter("position", Integer.toString(i)).build().toString();
            matrixCursor.newRow().add(Integer.valueOf(i)).add(hVar.f2752a.title.toString()).add(uri2).add("com.google.android.apps.nexuslauncher.search.APP_LAUNCH").add(uri2);
            i++;
        }
        return matrixCursor;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        throw new UnsupportedOperationException();
    }
}
