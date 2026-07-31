package com.rnmaps.maps;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.Log;
import androidx.work.Constraints;
import androidx.work.Data;
import androidx.work.ExistingWorkPolicy;
import androidx.work.NetworkType;
import androidx.work.OneTimeWorkRequest;
import androidx.work.WorkManager;
import com.google.android.gms.maps.model.Tile;
import com.google.android.gms.maps.model.TileProvider;
import com.google.android.gms.maps.model.UrlTileProvider;
import io.sentry.instrumentation.file.SentryFileOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.concurrent.TimeUnit;
import org.apache.commons.io.IOUtils;

/* loaded from: classes5.dex */
public class MapTileProvider implements TileProvider {
    protected static final int BUFFER_SIZE = 16384;
    protected static final int TARGET_TILE_SIZE = 512;
    protected Context context;
    protected boolean customMode;
    protected boolean doubleTileSize;
    protected boolean flipY;
    protected int maximumNativeZ;
    protected int maximumZ;
    protected int minimumZ;
    protected boolean offlineMode;
    protected int tileCacheMaxAge;
    protected String tileCachePath;
    protected UrlTileProvider tileProvider;
    protected int tileSize;
    protected String urlTemplate;

    public void setCustomMode() {
    }

    class AIRMapUrlTileProvider extends UrlTileProvider {
        private String urlTemplate;

        public AIRMapUrlTileProvider(int i, int i2, String str) {
            super(i, i2);
            this.urlTemplate = str;
        }

        @Override // com.google.android.gms.maps.model.UrlTileProvider
        public URL getTileUrl(int i, int i2, int i3) {
            if (MapTileProvider.this.flipY) {
                i2 = ((1 << i3) - i2) - 1;
            }
            String replace = this.urlTemplate.replace("{x}", Integer.toString(i)).replace("{y}", Integer.toString(i2)).replace("{z}", Integer.toString(i3));
            if (MapTileProvider.this.maximumZ > 0 && i3 > MapTileProvider.this.maximumZ) {
                return null;
            }
            if (MapTileProvider.this.minimumZ > 0 && i3 < MapTileProvider.this.minimumZ) {
                return null;
            }
            try {
                return new URL(replace);
            } catch (MalformedURLException e) {
                throw new AssertionError(e);
            }
        }

        public void setUrlTemplate(String str) {
            this.urlTemplate = str;
        }
    }

    public MapTileProvider(int i, boolean z, String str, int i2, int i3, int i4, boolean z2, String str2, int i5, boolean z3, Context context, boolean z4) {
        this.tileProvider = new AIRMapUrlTileProvider(i, i, str);
        this.tileSize = i;
        this.doubleTileSize = z;
        this.urlTemplate = str;
        this.maximumZ = i2;
        this.maximumNativeZ = i3;
        this.minimumZ = i4;
        this.flipY = z2;
        this.tileCachePath = str2;
        this.tileCacheMaxAge = i5;
        this.offlineMode = z3;
        this.context = context;
        this.customMode = z4;
    }

    @Override // com.google.android.gms.maps.model.TileProvider
    public Tile getTile(int i, int i2, int i3) {
        byte[] bArr;
        int i4;
        if (!this.customMode) {
            return this.tileProvider.getTile(i, i2, i3);
        }
        int i5 = this.maximumZ;
        if (i5 <= 0) {
            i5 = Integer.MAX_VALUE;
        }
        if (this.tileSize != 256 || !this.doubleTileSize || (i4 = i3 + 1) > this.maximumNativeZ || i4 > i5) {
            bArr = null;
        } else {
            Log.d("urlTile", "pullTilesFromHigherZoom");
            bArr = pullTilesFromHigherZoom(i, i2, i3);
        }
        if (i3 > this.maximumNativeZ) {
            Log.d("urlTile", "scaleLowerZoomTile");
            bArr = scaleLowerZoomTile(i, i2, i3, this.maximumNativeZ);
        }
        if (bArr == null && i3 <= i5) {
            Log.d("urlTile", "getTileImage");
            bArr = getTileImage(i, i2, i3);
        }
        if (bArr == null && this.tileCachePath != null && this.offlineMode) {
            Log.d("urlTile", "findLowerZoomTileForScaling");
            int i6 = this.maximumNativeZ;
            int max = Math.max(this.minimumZ, i3 - 3);
            for (int i7 = i3 > i6 ? i6 - 1 : i3 - 1; i7 >= max; i7--) {
                bArr = scaleLowerZoomTile(i, i2, i3, i7);
                if (bArr != null) {
                    break;
                }
            }
        }
        if (bArr == null) {
            return null;
        }
        int i8 = this.tileSize;
        return new Tile(i8, i8, bArr);
    }

    byte[] getTileImage(int i, int i2, int i3) {
        byte[] bArr;
        if (this.tileCachePath != null) {
            bArr = readTileImage(i, i2, i3);
            if (bArr != null) {
                Log.d("urlTile", "tile cache HIT for " + i3 + "/" + i + "/" + i2);
            } else {
                Log.d("urlTile", "tile cache MISS for " + i3 + "/" + i + "/" + i2);
            }
            if (bArr != null && !this.offlineMode) {
                checkForRefresh(i, i2, i3);
            }
        } else {
            bArr = null;
        }
        if (bArr == null && !this.offlineMode && this.tileCachePath != null) {
            String tileFilename = getTileFilename(i, i2, i3);
            OneTimeWorkRequest build = new OneTimeWorkRequest.Builder(MapTileWorker.class).setConstraints(new Constraints.Builder().setRequiredNetworkType(NetworkType.CONNECTED).build()).addTag(tileFilename).setInputData(new Data.Builder().putString("url", getTileUrl(i, i2, i3).toString()).putString("filename", tileFilename).putInt("maxAge", -1).build()).build();
            WorkManager workManager = WorkManager.getInstance(this.context.getApplicationContext());
            try {
                workManager.enqueueUniqueWork(tileFilename, ExistingWorkPolicy.KEEP, build).getResult().get(1L, TimeUnit.SECONDS);
                Thread.sleep(500L);
                Log.d("urlTile: ", workManager.getWorkInfosByTag(tileFilename).get(1L, TimeUnit.SECONDS).get(0).toString());
                if (this.tileCachePath != null) {
                    bArr = readTileImage(i, i2, i3);
                    if (bArr != null) {
                        Log.d("urlTile", "tile cache fetch HIT for " + i3 + "/" + i + "/" + i2);
                    } else {
                        Log.d("urlTile", "tile cache fetch MISS for " + i3 + "/" + i + "/" + i2);
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else if (bArr == null && !this.offlineMode) {
            Log.d("urlTile", "Normal fetch");
            bArr = fetchTile(i, i2, i3);
            if (bArr == null) {
                Log.d("urlTile", "tile fetch TIMEOUT / FAIL for " + i3 + "/" + i + "/" + i2);
            }
        }
        return bArr;
    }

    byte[] pullTilesFromHigherZoom(int i, int i2, int i3) {
        Bitmap newBitmap = getNewBitmap();
        Canvas canvas = new Canvas(newBitmap);
        Paint paint = new Paint();
        int i4 = i * 2;
        int i5 = i2 * 2;
        int i6 = i3 + 1;
        byte[] tileImage = getTileImage(i4, i5, i6);
        int i7 = i5 + 1;
        byte[] tileImage2 = getTileImage(i4, i7, i6);
        int i8 = i4 + 1;
        byte[] tileImage3 = getTileImage(i8, i5, i6);
        byte[] tileImage4 = getTileImage(i8, i7, i6);
        if (tileImage == null || tileImage2 == null || tileImage3 == null || tileImage4 == null) {
            return null;
        }
        Bitmap decodeByteArray = BitmapFactory.decodeByteArray(tileImage, 0, tileImage.length);
        canvas.drawBitmap(decodeByteArray, 0.0f, 0.0f, paint);
        decodeByteArray.recycle();
        Bitmap decodeByteArray2 = BitmapFactory.decodeByteArray(tileImage2, 0, tileImage2.length);
        canvas.drawBitmap(decodeByteArray2, 0.0f, 256.0f, paint);
        decodeByteArray2.recycle();
        Bitmap decodeByteArray3 = BitmapFactory.decodeByteArray(tileImage3, 0, tileImage3.length);
        canvas.drawBitmap(decodeByteArray3, 256.0f, 0.0f, paint);
        decodeByteArray3.recycle();
        Bitmap decodeByteArray4 = BitmapFactory.decodeByteArray(tileImage4, 0, tileImage4.length);
        canvas.drawBitmap(decodeByteArray4, 256.0f, 256.0f, paint);
        decodeByteArray4.recycle();
        byte[] bitmapToByteArray = bitmapToByteArray(newBitmap);
        newBitmap.recycle();
        return bitmapToByteArray;
    }

    Bitmap getNewBitmap() {
        Bitmap createBitmap = Bitmap.createBitmap(512, 512, Bitmap.Config.ARGB_8888);
        createBitmap.eraseColor(0);
        return createBitmap;
    }

    byte[] bitmapToByteArray(Bitmap bitmap) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        bitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        try {
            byteArrayOutputStream.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return byteArray;
    }

    byte[] scaleLowerZoomTile(int i, int i2, int i3, int i4) {
        int i5 = i3 - i4;
        int i6 = 1 << i5;
        int i7 = i >> i5;
        int i8 = i2 >> i5;
        int i9 = i3 - i5;
        int i10 = i % i6;
        int i11 = i2 % i6;
        Bitmap newBitmap = getNewBitmap();
        Canvas canvas = new Canvas(newBitmap);
        Paint paint = new Paint();
        byte[] tileImage = getTileImage(i7, i8, i9);
        if (tileImage == null) {
            return null;
        }
        Bitmap decodeByteArray = BitmapFactory.decodeByteArray(tileImage, 0, tileImage.length);
        int i12 = this.tileSize / i6;
        int i13 = i10 * i12;
        int i14 = i11 * i12;
        canvas.drawBitmap(decodeByteArray, new Rect(i13, i14, i13 + i12, i12 + i14), new Rect(0, 0, 512, 512), paint);
        decodeByteArray.recycle();
        byte[] bitmapToByteArray = bitmapToByteArray(newBitmap);
        newBitmap.recycle();
        return bitmapToByteArray;
    }

    void checkForRefresh(int i, int i2, int i3) {
        String tileFilename = getTileFilename(i, i2, i3);
        if ((System.currentTimeMillis() - new File(tileFilename).lastModified()) / 1000 > this.tileCacheMaxAge) {
            Log.d("urlTile", "Refreshing");
            WorkManager.getInstance(this.context.getApplicationContext()).enqueueUniqueWork(tileFilename, ExistingWorkPolicy.KEEP, new OneTimeWorkRequest.Builder(MapTileWorker.class).setConstraints(new Constraints.Builder().setRequiredNetworkType(NetworkType.CONNECTED).build()).addTag(tileFilename).setInputData(new Data.Builder().putString("url", getTileUrl(i, i2, i3).toString()).putString("filename", tileFilename).putInt("maxAge", this.tileCacheMaxAge).build()).build());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:32:0x005a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0055 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r7v1, types: [java.net.URL] */
    /* JADX WARN: Type inference failed for: r7v10, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference failed for: r7v5, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r7v6, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r9v0, types: [int] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v3, types: [java.io.ByteArrayOutputStream] */
    /* JADX WARN: Type inference failed for: r9v6 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    byte[] fetchTile(int r7, int r8, int r9) {
        /*
            r6 = this;
            java.net.URL r7 = r6.getTileUrl(r7, r8, r9)
            r8 = 0
            java.net.URLConnection r7 = r7.openConnection()     // Catch: java.lang.Throwable -> L46 java.lang.OutOfMemoryError -> L4b java.io.IOException -> L4d
            java.lang.Object r7 = com.google.firebase.perf.network.FirebasePerfUrlConnection.instrument(r7)     // Catch: java.lang.Throwable -> L46 java.lang.OutOfMemoryError -> L4b java.io.IOException -> L4d
            java.net.URLConnection r7 = (java.net.URLConnection) r7     // Catch: java.lang.Throwable -> L46 java.lang.OutOfMemoryError -> L4b java.io.IOException -> L4d
            java.io.InputStream r7 = r7.getInputStream()     // Catch: java.lang.Throwable -> L46 java.lang.OutOfMemoryError -> L4b java.io.IOException -> L4d
            java.io.ByteArrayOutputStream r9 = new java.io.ByteArrayOutputStream     // Catch: java.lang.Throwable -> L3c java.lang.OutOfMemoryError -> L41 java.io.IOException -> L43
            r9.<init>()     // Catch: java.lang.Throwable -> L3c java.lang.OutOfMemoryError -> L41 java.io.IOException -> L43
            r0 = 16384(0x4000, float:2.2959E-41)
            byte[] r1 = new byte[r0]     // Catch: java.lang.OutOfMemoryError -> L38 java.io.IOException -> L3a java.lang.Throwable -> L5e
        L1c:
            r2 = 0
            int r3 = r7.read(r1, r2, r0)     // Catch: java.lang.OutOfMemoryError -> L38 java.io.IOException -> L3a java.lang.Throwable -> L5e
            r4 = -1
            if (r3 == r4) goto L28
            r9.write(r1, r2, r3)     // Catch: java.lang.OutOfMemoryError -> L38 java.io.IOException -> L3a java.lang.Throwable -> L5e
            goto L1c
        L28:
            r9.flush()     // Catch: java.lang.OutOfMemoryError -> L38 java.io.IOException -> L3a java.lang.Throwable -> L5e
            byte[] r8 = r9.toByteArray()     // Catch: java.lang.OutOfMemoryError -> L38 java.io.IOException -> L3a java.lang.Throwable -> L5e
            if (r7 == 0) goto L34
            r7.close()     // Catch: java.lang.Exception -> L34
        L34:
            r9.close()     // Catch: java.lang.Exception -> L37
        L37:
            return r8
        L38:
            r0 = move-exception
            goto L50
        L3a:
            r0 = move-exception
            goto L50
        L3c:
            r9 = move-exception
            r5 = r9
            r9 = r8
            r8 = r5
            goto L5f
        L41:
            r0 = move-exception
            goto L44
        L43:
            r0 = move-exception
        L44:
            r9 = r8
            goto L50
        L46:
            r7 = move-exception
            r9 = r8
            r8 = r7
            r7 = r9
            goto L5f
        L4b:
            r0 = move-exception
            goto L4e
        L4d:
            r0 = move-exception
        L4e:
            r7 = r8
            r9 = r7
        L50:
            r0.printStackTrace()     // Catch: java.lang.Throwable -> L5e
            if (r7 == 0) goto L58
            r7.close()     // Catch: java.lang.Exception -> L58
        L58:
            if (r9 == 0) goto L5d
            r9.close()     // Catch: java.lang.Exception -> L5d
        L5d:
            return r8
        L5e:
            r8 = move-exception
        L5f:
            if (r7 == 0) goto L64
            r7.close()     // Catch: java.lang.Exception -> L64
        L64:
            if (r9 == 0) goto L69
            r9.close()     // Catch: java.lang.Exception -> L69
        L69:
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.rnmaps.maps.MapTileProvider.fetchTile(int, int, int):byte[]");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0067 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0062 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r7v1, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference failed for: r7v5, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r7v6, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r7v8, types: [java.io.FileInputStream, java.io.InputStream] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    byte[] readTileImage(int r7, int r8, int r9) {
        /*
            r6 = this;
            java.lang.String r7 = r6.getTileFilename(r7, r8, r9)
            r8 = 0
            if (r7 != 0) goto L8
            return r8
        L8:
            java.io.File r9 = new java.io.File
            r9.<init>(r7)
            java.io.FileInputStream r7 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L53 java.lang.OutOfMemoryError -> L58 java.io.IOException -> L5a
            r7.<init>(r9)     // Catch: java.lang.Throwable -> L53 java.lang.OutOfMemoryError -> L58 java.io.IOException -> L5a
            java.io.FileInputStream r7 = io.sentry.instrumentation.file.SentryFileInputStream.Factory.create(r7, r9)     // Catch: java.lang.Throwable -> L53 java.lang.OutOfMemoryError -> L58 java.io.IOException -> L5a
            java.io.ByteArrayOutputStream r0 = new java.io.ByteArrayOutputStream     // Catch: java.lang.Throwable -> L4a java.lang.OutOfMemoryError -> L4e java.io.IOException -> L50
            r0.<init>()     // Catch: java.lang.Throwable -> L4a java.lang.OutOfMemoryError -> L4e java.io.IOException -> L50
            r1 = 16384(0x4000, float:2.2959E-41)
            byte[] r2 = new byte[r1]     // Catch: java.lang.OutOfMemoryError -> L46 java.io.IOException -> L48 java.lang.Throwable -> L6b
        L1f:
            r3 = 0
            int r4 = r7.read(r2, r3, r1)     // Catch: java.lang.OutOfMemoryError -> L46 java.io.IOException -> L48 java.lang.Throwable -> L6b
            r5 = -1
            if (r4 == r5) goto L2b
            r0.write(r2, r3, r4)     // Catch: java.lang.OutOfMemoryError -> L46 java.io.IOException -> L48 java.lang.Throwable -> L6b
            goto L1f
        L2b:
            r0.flush()     // Catch: java.lang.OutOfMemoryError -> L46 java.io.IOException -> L48 java.lang.Throwable -> L6b
            int r1 = r6.tileCacheMaxAge     // Catch: java.lang.OutOfMemoryError -> L46 java.io.IOException -> L48 java.lang.Throwable -> L6b
            if (r1 != 0) goto L39
            long r1 = java.lang.System.currentTimeMillis()     // Catch: java.lang.OutOfMemoryError -> L46 java.io.IOException -> L48 java.lang.Throwable -> L6b
            r9.setLastModified(r1)     // Catch: java.lang.OutOfMemoryError -> L46 java.io.IOException -> L48 java.lang.Throwable -> L6b
        L39:
            byte[] r8 = r0.toByteArray()     // Catch: java.lang.OutOfMemoryError -> L46 java.io.IOException -> L48 java.lang.Throwable -> L6b
            if (r7 == 0) goto L42
            r7.close()     // Catch: java.lang.Exception -> L42
        L42:
            r0.close()     // Catch: java.lang.Exception -> L45
        L45:
            return r8
        L46:
            r9 = move-exception
            goto L5d
        L48:
            r9 = move-exception
            goto L5d
        L4a:
            r9 = move-exception
            r0 = r8
            r8 = r9
            goto L6c
        L4e:
            r9 = move-exception
            goto L51
        L50:
            r9 = move-exception
        L51:
            r0 = r8
            goto L5d
        L53:
            r7 = move-exception
            r0 = r8
            r8 = r7
            r7 = r0
            goto L6c
        L58:
            r9 = move-exception
            goto L5b
        L5a:
            r9 = move-exception
        L5b:
            r7 = r8
            r0 = r7
        L5d:
            r9.printStackTrace()     // Catch: java.lang.Throwable -> L6b
            if (r7 == 0) goto L65
            r7.close()     // Catch: java.lang.Exception -> L65
        L65:
            if (r0 == 0) goto L6a
            r0.close()     // Catch: java.lang.Exception -> L6a
        L6a:
            return r8
        L6b:
            r8 = move-exception
        L6c:
            if (r7 == 0) goto L71
            r7.close()     // Catch: java.lang.Exception -> L71
        L71:
            if (r0 == 0) goto L76
            r0.close()     // Catch: java.lang.Exception -> L76
        L76:
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.rnmaps.maps.MapTileProvider.readTileImage(int, int, int):byte[]");
    }

    boolean writeTileImage(byte[] bArr, int i, int i2, int i3) {
        String tileFilename = getTileFilename(i, i2, i3);
        if (tileFilename == null) {
            return false;
        }
        FileOutputStream fileOutputStream = null;
        try {
            try {
                File file = new File(tileFilename);
                file.getParentFile().mkdirs();
                fileOutputStream = SentryFileOutputStream.Factory.create(new FileOutputStream(file), file);
                fileOutputStream.write(bArr);
                if (fileOutputStream == null) {
                    return true;
                }
                try {
                    fileOutputStream.close();
                    return true;
                } catch (Exception unused) {
                    return true;
                }
            } catch (Throwable th) {
                if (0 != 0) {
                    try {
                        fileOutputStream.close();
                    } catch (Exception unused2) {
                    }
                }
                throw th;
            }
        } catch (IOException | OutOfMemoryError e) {
            e.printStackTrace();
            if (fileOutputStream != null) {
                try {
                    fileOutputStream.close();
                } catch (Exception unused3) {
                }
            }
            return false;
        }
    }

    String getTileFilename(int i, int i2, int i3) {
        if (this.tileCachePath == null) {
            return null;
        }
        return this.tileCachePath + IOUtils.DIR_SEPARATOR_UNIX + i3 + "/" + i + "/" + i2;
    }

    protected URL getTileUrl(int i, int i2, int i3) {
        return this.tileProvider.getTileUrl(i, i2, i3);
    }

    public void setUrlTemplate(String str) {
        if (this.urlTemplate != str) {
            int i = this.tileSize;
            this.tileProvider = new AIRMapUrlTileProvider(i, i, str);
        }
        this.urlTemplate = str;
    }

    public void setTileSize(int i) {
        if (this.tileSize != i) {
            this.tileProvider = new AIRMapUrlTileProvider(i, i, this.urlTemplate);
        }
        this.tileSize = i;
    }

    public void setDoubleTileSize(boolean z) {
        this.doubleTileSize = z;
    }

    public void setMaximumZ(int i) {
        this.maximumZ = i;
    }

    public void setMaximumNativeZ(int i) {
        this.maximumNativeZ = i;
    }

    public void setMinimumZ(int i) {
        this.minimumZ = i;
    }

    public void setFlipY(boolean z) {
        this.flipY = z;
    }

    public void setTileCachePath(String str) {
        this.tileCachePath = str;
    }

    public void setTileCacheMaxAge(int i) {
        this.tileCacheMaxAge = i;
    }

    public void setOfflineMode(boolean z) {
        this.offlineMode = z;
    }
}
