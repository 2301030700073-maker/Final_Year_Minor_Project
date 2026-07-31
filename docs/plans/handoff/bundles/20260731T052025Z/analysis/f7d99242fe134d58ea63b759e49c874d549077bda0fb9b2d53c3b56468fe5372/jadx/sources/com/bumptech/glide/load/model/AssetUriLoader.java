package com.bumptech.glide.load.model;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.Log;
import androidx.compose.ui.unit.IntRectKt;
import androidx.core.util.Pools$Pool;
import androidx.navigation.internal.NavContext;
import coil3.util.UtilsKt;
import coil3.util.Utils_androidKt;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.data.StreamAssetPathFetcher;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.load.resource.drawable.ResourceDrawableDecoder;
import com.bumptech.glide.signature.ObjectKey;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class AssetUriLoader implements ModelLoader {
    public final /* synthetic */ int $r8$classId;
    public final Object assetManager;
    public final Object factory;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class StreamFactory implements ModelLoaderFactory {
        public final /* synthetic */ int $r8$classId;
        public final AssetManager assetManager;

        public /* synthetic */ StreamFactory(AssetManager assetManager, int i) {
            this.$r8$classId = i;
            this.assetManager = assetManager;
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public final ModelLoader build(MultiModelLoaderFactory multiModelLoaderFactory) {
            switch (this.$r8$classId) {
                case 0:
                    return new AssetUriLoader(0, this.assetManager, this);
                default:
                    return new AssetUriLoader(0, this.assetManager, this);
            }
        }
    }

    public AssetUriLoader(Context context, NavContext navContext) {
        this.$r8$classId = 1;
        this.assetManager = context.getApplicationContext();
        this.factory = navContext;
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    public final ModelLoader.LoadData buildLoadData(Object obj, int i, int i2, Options options) {
        StreamAssetPathFetcher streamAssetPathFetcher;
        ModelLoader.LoadData buildLoadData;
        Uri uri;
        int i3 = this.$r8$classId;
        ModelLoader.LoadData loadData = null;
        Object obj2 = this.assetManager;
        Object obj3 = this.factory;
        switch (i3) {
            case 0:
                Uri uri2 = (Uri) obj;
                String substring = uri2.toString().substring(22);
                ObjectKey objectKey = new ObjectKey(uri2);
                AssetManager assetManager = (AssetManager) obj2;
                switch (((StreamFactory) obj3).$r8$classId) {
                    case 0:
                        streamAssetPathFetcher = new StreamAssetPathFetcher(assetManager, substring, 0);
                        break;
                    default:
                        streamAssetPathFetcher = new StreamAssetPathFetcher(assetManager, substring, 1);
                        break;
                }
                return new ModelLoader.LoadData(objectKey, streamAssetPathFetcher);
            case 1:
                Integer num = (Integer) obj;
                final Resources.Theme theme = (Resources.Theme) options.get(ResourceDrawableDecoder.THEME);
                final Resources resources = theme != null ? theme.getResources() : ((Context) obj2).getResources();
                ObjectKey objectKey2 = new ObjectKey(num);
                final NavContext navContext = (NavContext) obj3;
                final int intValue = num.intValue();
                return new ModelLoader.LoadData(objectKey2, new DataFetcher(theme, resources, navContext, intValue) { // from class: com.bumptech.glide.load.model.DirectResourceLoader$ResourceDataFetcher
                    public Object data;
                    public final int resourceId;
                    public final NavContext resourceOpener;
                    public final Resources resources;
                    public final Resources.Theme theme;

                    {
                        this.theme = theme;
                        this.resources = resources;
                        this.resourceOpener = navContext;
                        this.resourceId = intValue;
                    }

                    @Override // com.bumptech.glide.load.data.DataFetcher
                    public final void cleanup() {
                        Object obj4 = this.data;
                        if (obj4 != null) {
                            try {
                                switch (this.resourceOpener.$r8$classId) {
                                    case 3:
                                        ((AssetFileDescriptor) obj4).close();
                                        break;
                                    case 4:
                                        break;
                                    default:
                                        ((InputStream) obj4).close();
                                        break;
                                }
                            } catch (IOException unused) {
                            }
                        }
                    }

                    @Override // com.bumptech.glide.load.data.DataFetcher
                    public final Class getDataClass() {
                        switch (this.resourceOpener.$r8$classId) {
                            case 3:
                                return AssetFileDescriptor.class;
                            case 4:
                                return Drawable.class;
                            default:
                                return InputStream.class;
                        }
                    }

                    @Override // com.bumptech.glide.load.data.DataFetcher
                    public final int getDataSource() {
                        return 1;
                    }

                    @Override // com.bumptech.glide.load.data.DataFetcher
                    public final void loadData(Priority priority, DataFetcher.DataCallback dataCallback) {
                        Object openRawResourceFd;
                        try {
                            NavContext navContext2 = this.resourceOpener;
                            Resources.Theme theme2 = this.theme;
                            Resources resources2 = this.resources;
                            int i4 = this.resourceId;
                            switch (navContext2.$r8$classId) {
                                case 3:
                                    openRawResourceFd = resources2.openRawResourceFd(i4);
                                    break;
                                case 4:
                                    Context context = navContext2.context;
                                    openRawResourceFd = IntRectKt.getDrawable(context, context, i4, theme2);
                                    break;
                                default:
                                    openRawResourceFd = resources2.openRawResource(i4);
                                    break;
                            }
                            this.data = openRawResourceFd;
                            dataCallback.onDataReady(openRawResourceFd);
                        } catch (Resources.NotFoundException e) {
                            dataCallback.onLoadFailed(e);
                        }
                    }

                    @Override // com.bumptech.glide.load.data.DataFetcher
                    public final void cancel() {
                    }
                });
            case 2:
                ArrayList arrayList = (ArrayList) obj2;
                int size = arrayList.size();
                ArrayList arrayList2 = new ArrayList(size);
                Key key = null;
                for (int i4 = 0; i4 < size; i4++) {
                    ModelLoader modelLoader = (ModelLoader) arrayList.get(i4);
                    if (modelLoader.handles(obj) && (buildLoadData = modelLoader.buildLoadData(obj, i, i2, options)) != null) {
                        key = buildLoadData.sourceKey;
                        arrayList2.add(buildLoadData.fetcher);
                    }
                }
                if (arrayList2.isEmpty() || key == null) {
                    return null;
                }
                return new ModelLoader.LoadData(key, new MultiModelLoader$MultiFetcher(arrayList2, (Pools$Pool) obj3));
            case 3:
                Integer num2 = (Integer) obj;
                Resources resources2 = (Resources) obj3;
                try {
                    uri = Uri.parse("android.resource://" + resources2.getResourcePackageName(num2.intValue()) + '/' + resources2.getResourceTypeName(num2.intValue()) + '/' + resources2.getResourceEntryName(num2.intValue()));
                } catch (Resources.NotFoundException e) {
                    if (Log.isLoggable("ResourceLoader", 5)) {
                        Log.w("ResourceLoader", "Received invalid resource id: " + num2, e);
                    }
                    uri = null;
                }
                if (uri == null) {
                    return null;
                }
                return ((ModelLoader) obj2).buildLoadData(uri, i, i2, options);
            default:
                Uri uri3 = (Uri) obj;
                ModelLoader modelLoader2 = (ModelLoader) obj3;
                List<String> pathSegments = uri3.getPathSegments();
                if (pathSegments.size() == 1) {
                    try {
                        int parseInt = Integer.parseInt(uri3.getPathSegments().get(0));
                        if (parseInt != 0) {
                            loadData = modelLoader2.buildLoadData(Integer.valueOf(parseInt), i, i2, options);
                        } else if (Log.isLoggable("ResourceUriLoader", 5)) {
                            Log.w("ResourceUriLoader", "Failed to parse a valid non-0 resource id from: " + uri3);
                        }
                        return loadData;
                    } catch (NumberFormatException e2) {
                        if (!Log.isLoggable("ResourceUriLoader", 5)) {
                            return loadData;
                        }
                        Log.w("ResourceUriLoader", "Failed to parse resource id from: " + uri3, e2);
                        return loadData;
                    }
                }
                if (pathSegments.size() != 2) {
                    if (!Log.isLoggable("ResourceUriLoader", 5)) {
                        return null;
                    }
                    Log.w("ResourceUriLoader", "Failed to parse resource uri: " + uri3);
                    return null;
                }
                List<String> pathSegments2 = uri3.getPathSegments();
                Context context = (Context) obj2;
                int identifier = context.getResources().getIdentifier(pathSegments2.get(1), pathSegments2.get(0), context.getPackageName());
                if (identifier != 0) {
                    return modelLoader2.buildLoadData(Integer.valueOf(identifier), i, i2, options);
                }
                if (!Log.isLoggable("ResourceUriLoader", 5)) {
                    return null;
                }
                Log.w("ResourceUriLoader", "Failed to find resource id for: " + uri3);
                return null;
        }
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    public final boolean handles(Object obj) {
        int i = this.$r8$classId;
        Object obj2 = this.assetManager;
        switch (i) {
            case 0:
                Uri uri = (Uri) obj;
                if (UtilsKt.SCHEME_FILE.equals(uri.getScheme()) && !uri.getPathSegments().isEmpty() && Utils_androidKt.ASSET_FILE_PATH_ROOT.equals(uri.getPathSegments().get(0))) {
                    break;
                }
                break;
            case 1:
                break;
            case 2:
                Iterator it = ((ArrayList) obj2).iterator();
                while (it.hasNext()) {
                    if (((ModelLoader) it.next()).handles(obj)) {
                        break;
                    }
                }
                break;
            case 3:
                break;
            default:
                Uri uri2 = (Uri) obj;
                if ("android.resource".equals(uri2.getScheme()) && ((Context) obj2).getPackageName().equals(uri2.getAuthority())) {
                    break;
                }
                break;
        }
        return true;
    }

    public String toString() {
        switch (this.$r8$classId) {
            case 2:
                return "MultiModelLoader{modelLoaders=" + Arrays.toString(((ArrayList) this.assetManager).toArray()) + '}';
            default:
                return super.toString();
        }
    }

    public AssetUriLoader(Resources resources, ModelLoader modelLoader) {
        this.$r8$classId = 3;
        this.factory = resources;
        this.assetManager = modelLoader;
    }

    public /* synthetic */ AssetUriLoader(int i, Object obj, Object obj2) {
        this.$r8$classId = i;
        this.assetManager = obj;
        this.factory = obj2;
    }

    public AssetUriLoader(Context context, ModelLoader modelLoader) {
        this.$r8$classId = 4;
        this.assetManager = context.getApplicationContext();
        this.factory = modelLoader;
    }
}
