package com.rnmaps.maps;

import android.content.Context;
import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.model.Tile;
import com.google.android.gms.maps.model.TileOverlay;
import com.google.android.gms.maps.model.TileOverlayOptions;
import com.google.android.gms.maps.model.TileProvider;

/* loaded from: classes5.dex */
public class MapLocalTile extends MapFeature {
    private String pathTemplate;
    private TileOverlay tileOverlay;
    private TileOverlayOptions tileOverlayOptions;
    private AIRMapLocalTileProvider tileProvider;
    private float tileSize;
    private boolean useAssets;
    private float zIndex;

    class AIRMapLocalTileProvider implements TileProvider {
        private static final int BUFFER_SIZE = 16384;
        private String pathTemplate;
        private int tileSize;
        private final boolean useAssets;

        public AIRMapLocalTileProvider(int i, String str, boolean z) {
            this.tileSize = i;
            this.pathTemplate = str;
            this.useAssets = z;
        }

        @Override // com.google.android.gms.maps.model.TileProvider
        public Tile getTile(int i, int i2, int i3) {
            byte[] readTileImage = readTileImage(i, i2, i3);
            if (readTileImage == null) {
                return TileProvider.NO_TILE;
            }
            int i4 = this.tileSize;
            return new Tile(i4, i4, readTileImage);
        }

        public void setPathTemplate(String str) {
            this.pathTemplate = str;
        }

        public void setTileSize(int i) {
            this.tileSize = i;
        }

        /* JADX WARN: Removed duplicated region for block: B:35:0x0073 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:39:0x006e A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:48:0x0081 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:54:? A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:55:0x007c A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private byte[] readTileImage(int r7, int r8, int r9) {
            /*
                r6 = this;
                java.lang.String r7 = r6.getTileFilename(r7, r8, r9)
                r8 = 0
                boolean r9 = r6.useAssets     // Catch: java.lang.Throwable -> L61 java.lang.OutOfMemoryError -> L64 java.io.IOException -> L66
                if (r9 == 0) goto L18
                com.rnmaps.maps.MapLocalTile r9 = com.rnmaps.maps.MapLocalTile.this     // Catch: java.lang.Throwable -> L61 java.lang.OutOfMemoryError -> L64 java.io.IOException -> L66
                android.content.Context r9 = r9.getContext()     // Catch: java.lang.Throwable -> L61 java.lang.OutOfMemoryError -> L64 java.io.IOException -> L66
                android.content.res.AssetManager r9 = r9.getAssets()     // Catch: java.lang.Throwable -> L61 java.lang.OutOfMemoryError -> L64 java.io.IOException -> L66
                java.io.InputStream r7 = r9.open(r7)     // Catch: java.lang.Throwable -> L61 java.lang.OutOfMemoryError -> L64 java.io.IOException -> L66
                goto L21
            L18:
                java.io.FileInputStream r9 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L61 java.lang.OutOfMemoryError -> L64 java.io.IOException -> L66
                r9.<init>(r7)     // Catch: java.lang.Throwable -> L61 java.lang.OutOfMemoryError -> L64 java.io.IOException -> L66
                java.io.FileInputStream r7 = io.sentry.instrumentation.file.SentryFileInputStream.Factory.create(r9, r7)     // Catch: java.lang.Throwable -> L61 java.lang.OutOfMemoryError -> L64 java.io.IOException -> L66
            L21:
                java.io.ByteArrayOutputStream r9 = new java.io.ByteArrayOutputStream     // Catch: java.lang.Throwable -> L53 java.lang.OutOfMemoryError -> L59 java.io.IOException -> L5b
                r9.<init>()     // Catch: java.lang.Throwable -> L53 java.lang.OutOfMemoryError -> L59 java.io.IOException -> L5b
                r0 = 16384(0x4000, float:2.2959E-41)
                byte[] r1 = new byte[r0]     // Catch: java.lang.Throwable -> L46 java.lang.OutOfMemoryError -> L4b java.io.IOException -> L4d
            L2a:
                r2 = 0
                int r3 = r7.read(r1, r2, r0)     // Catch: java.lang.Throwable -> L46 java.lang.OutOfMemoryError -> L4b java.io.IOException -> L4d
                r4 = -1
                if (r3 == r4) goto L36
                r9.write(r1, r2, r3)     // Catch: java.lang.Throwable -> L46 java.lang.OutOfMemoryError -> L4b java.io.IOException -> L4d
                goto L2a
            L36:
                r9.flush()     // Catch: java.lang.Throwable -> L46 java.lang.OutOfMemoryError -> L4b java.io.IOException -> L4d
                byte[] r8 = r9.toByteArray()     // Catch: java.lang.Throwable -> L46 java.lang.OutOfMemoryError -> L4b java.io.IOException -> L4d
                if (r7 == 0) goto L42
                r7.close()     // Catch: java.lang.Exception -> L42
            L42:
                r9.close()     // Catch: java.lang.Exception -> L45
            L45:
                return r8
            L46:
                r8 = move-exception
                r5 = r8
                r8 = r7
                r7 = r5
                goto L7a
            L4b:
                r0 = move-exception
                goto L4e
            L4d:
                r0 = move-exception
            L4e:
                r5 = r9
                r9 = r7
                r7 = r0
                r0 = r5
                goto L69
            L53:
                r9 = move-exception
                r5 = r8
                r8 = r7
                r7 = r9
                r9 = r5
                goto L7a
            L59:
                r9 = move-exception
                goto L5c
            L5b:
                r9 = move-exception
            L5c:
                r0 = r8
                r5 = r9
                r9 = r7
                r7 = r5
                goto L69
            L61:
                r7 = move-exception
                r9 = r8
                goto L7a
            L64:
                r7 = move-exception
                goto L67
            L66:
                r7 = move-exception
            L67:
                r9 = r8
                r0 = r9
            L69:
                r7.printStackTrace()     // Catch: java.lang.Throwable -> L77
                if (r9 == 0) goto L71
                r9.close()     // Catch: java.lang.Exception -> L71
            L71:
                if (r0 == 0) goto L76
                r0.close()     // Catch: java.lang.Exception -> L76
            L76:
                return r8
            L77:
                r7 = move-exception
                r8 = r9
                r9 = r0
            L7a:
                if (r8 == 0) goto L7f
                r8.close()     // Catch: java.lang.Exception -> L7f
            L7f:
                if (r9 == 0) goto L84
                r9.close()     // Catch: java.lang.Exception -> L84
            L84:
                throw r7
            */
            throw new UnsupportedOperationException("Method not decompiled: com.rnmaps.maps.MapLocalTile.AIRMapLocalTileProvider.readTileImage(int, int, int):byte[]");
        }

        private String getTileFilename(int i, int i2, int i3) {
            return this.pathTemplate.replace("{x}", Integer.toString(i)).replace("{y}", Integer.toString(i2)).replace("{z}", Integer.toString(i3));
        }
    }

    public MapLocalTile(Context context) {
        super(context);
    }

    public void setPathTemplate(String str) {
        this.pathTemplate = str;
        AIRMapLocalTileProvider aIRMapLocalTileProvider = this.tileProvider;
        if (aIRMapLocalTileProvider != null) {
            aIRMapLocalTileProvider.setPathTemplate(str);
        }
        TileOverlay tileOverlay = this.tileOverlay;
        if (tileOverlay != null) {
            tileOverlay.clearTileCache();
        }
    }

    public void setZIndex(float f) {
        this.zIndex = f;
        TileOverlay tileOverlay = this.tileOverlay;
        if (tileOverlay != null) {
            tileOverlay.setZIndex(f);
        }
    }

    public void setTileSize(float f) {
        this.tileSize = f;
        AIRMapLocalTileProvider aIRMapLocalTileProvider = this.tileProvider;
        if (aIRMapLocalTileProvider != null) {
            aIRMapLocalTileProvider.setTileSize((int) f);
        }
    }

    public void setUseAssets(boolean z) {
        this.useAssets = z;
    }

    public TileOverlayOptions getTileOverlayOptions() {
        if (this.tileOverlayOptions == null) {
            this.tileOverlayOptions = createTileOverlayOptions();
        }
        return this.tileOverlayOptions;
    }

    private TileOverlayOptions createTileOverlayOptions() {
        TileOverlayOptions tileOverlayOptions = new TileOverlayOptions();
        tileOverlayOptions.zIndex(this.zIndex);
        AIRMapLocalTileProvider aIRMapLocalTileProvider = new AIRMapLocalTileProvider((int) this.tileSize, this.pathTemplate, this.useAssets);
        this.tileProvider = aIRMapLocalTileProvider;
        tileOverlayOptions.tileProvider(aIRMapLocalTileProvider);
        return tileOverlayOptions;
    }

    @Override // com.rnmaps.maps.MapFeature
    public Object getFeature() {
        return this.tileOverlay;
    }

    @Override // com.rnmaps.maps.MapFeature
    public void addToMap(Object obj) {
        this.tileOverlay = ((GoogleMap) obj).addTileOverlay(getTileOverlayOptions());
    }

    @Override // com.rnmaps.maps.MapFeature
    public void removeFromMap(Object obj) {
        this.tileOverlay.remove();
    }
}
