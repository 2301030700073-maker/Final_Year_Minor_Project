package com.bumptech.glide.load.data.mediastore;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.provider.MediaStore;
import android.util.Log;
import androidx.datastore.preferences.PreferencesProto$Value;
import com.bumptech.glide.Glide;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.model.ByteBufferEncoder;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class ThumbFetcher implements DataFetcher {
    public final /* synthetic */ int $r8$classId;
    public Object inputStream;
    public final Comparable mediaStoreImageUri;
    public final Object opener;

    /* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
    public final class ImageThumbnailQuery {
        public static final String[] PATH_PROJECTION = {"_data"};
        public static final String[] PATH_PROJECTION$1 = {"_data"};
        public final /* synthetic */ int $r8$classId;
        public final ContentResolver contentResolver;

        public /* synthetic */ ImageThumbnailQuery(ContentResolver contentResolver, int i) {
            this.$r8$classId = i;
            this.contentResolver = contentResolver;
        }

        public final Cursor query(Uri uri) {
            switch (this.$r8$classId) {
                case 0:
                    String lastPathSegment = uri.getLastPathSegment();
                    return this.contentResolver.query(MediaStore.Images.Thumbnails.EXTERNAL_CONTENT_URI, PATH_PROJECTION, "kind = 1 AND image_id = ?", new String[]{lastPathSegment}, null);
                default:
                    String lastPathSegment2 = uri.getLastPathSegment();
                    return this.contentResolver.query(MediaStore.Video.Thumbnails.EXTERNAL_CONTENT_URI, PATH_PROJECTION$1, "kind = 1 AND video_id = ?", new String[]{lastPathSegment2}, null);
            }
        }
    }

    public /* synthetic */ ThumbFetcher(int i, Comparable comparable, Object obj) {
        this.$r8$classId = i;
        this.mediaStoreImageUri = comparable;
        this.opener = obj;
    }

    public static ThumbFetcher build(Context context, Uri uri, ImageThumbnailQuery imageThumbnailQuery) {
        return new ThumbFetcher(0, uri, new ThumbnailStreamOpener(Glide.get(context).glideContext.getRegistry().getImageHeaderParsers(), imageThumbnailQuery, Glide.get(context).arrayPool, context.getContentResolver()));
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    public final void cancel() {
        int i = this.$r8$classId;
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    public final void cleanup() {
        switch (this.$r8$classId) {
            case 0:
                InputStream inputStream = (InputStream) this.inputStream;
                if (inputStream != null) {
                    try {
                        inputStream.close();
                        break;
                    } catch (IOException unused) {
                        return;
                    }
                }
                break;
            default:
                Object obj = this.inputStream;
                if (obj != null) {
                    try {
                        switch (((ByteBufferEncoder) this.opener).$r8$classId) {
                            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                                ((ParcelFileDescriptor) obj).close();
                                break;
                            default:
                                ((InputStream) obj).close();
                                break;
                        }
                        break;
                    } catch (IOException unused2) {
                        return;
                    }
                }
                break;
        }
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    public final Class getDataClass() {
        switch (this.$r8$classId) {
            case 0:
                return InputStream.class;
            default:
                return ((ByteBufferEncoder) this.opener).getDataClass();
        }
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    public final int getDataSource() {
        switch (this.$r8$classId) {
        }
        return 1;
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    public final void loadData(Priority priority, DataFetcher.DataCallback dataCallback) {
        Object open;
        switch (this.$r8$classId) {
            case 0:
                try {
                    InputStream openThumbInputStream = openThumbInputStream();
                    this.inputStream = openThumbInputStream;
                    dataCallback.onDataReady(openThumbInputStream);
                    break;
                } catch (FileNotFoundException e) {
                    if (Log.isLoggable("MediaStoreThumbFetcher", 3)) {
                        Log.d("MediaStoreThumbFetcher", "Failed to find thumbnail file", e);
                    }
                    dataCallback.onLoadFailed(e);
                }
            default:
                try {
                    ByteBufferEncoder byteBufferEncoder = (ByteBufferEncoder) this.opener;
                    File file = (File) this.mediaStoreImageUri;
                    switch (byteBufferEncoder.$r8$classId) {
                        case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                            open = ParcelFileDescriptor.open(file, 268435456);
                            break;
                        default:
                            open = new FileInputStream(file);
                            break;
                    }
                    this.inputStream = open;
                    dataCallback.onDataReady(open);
                    break;
                } catch (FileNotFoundException e2) {
                    if (Log.isLoggable("FileLoader", 3)) {
                        Log.d("FileLoader", "Failed to open file", e2);
                    }
                    dataCallback.onLoadFailed(e2);
                    return;
                }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x002d, code lost:
    
        if (r6 != null) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x004e, code lost:
    
        if (r6 != null) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x002f, code lost:
    
        r6.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0032, code lost:
    
        r3 = null;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Not initialized variable reg: 6, insn: 0x0028: MOVE (r5 I:??[OBJECT, ARRAY]) = (r6 I:??[OBJECT, ARRAY]) (LINE:41), block:B:68:0x0028 */
    /* JADX WARN: Removed duplicated region for block: B:13:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00da  */
    /* JADX WARN: Removed duplicated region for block: B:21:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00e3  */
    /* JADX WARN: Type inference failed for: r0v4, types: [java.io.IOException, java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r5v0, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r5v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r6v1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.io.InputStream openThumbInputStream() {
        /*
            Method dump skipped, instructions count: 231
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.data.mediastore.ThumbFetcher.openThumbInputStream():java.io.InputStream");
    }

    private final void cancel$com$bumptech$glide$load$data$mediastore$ThumbFetcher() {
    }

    private final void cancel$com$bumptech$glide$load$model$FileLoader$FileFetcher() {
    }
}
