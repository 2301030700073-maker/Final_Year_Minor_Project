package c.b.a.b.b.n;

import android.content.ContentProvider;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import com.google.android.apps.nexuslauncher.search.AppSearchProvider;
import java.util.concurrent.Future;

/* loaded from: classes.dex */
public class f implements ContentProvider.PipeDataWriter {
    public f(AppSearchProvider appSearchProvider) {
    }

    @Override // android.content.ContentProvider.PipeDataWriter
    public void writeDataToPipe(ParcelFileDescriptor parcelFileDescriptor, Uri uri, String str, Bundle bundle, Object obj) {
        Future future = (Future) obj;
        try {
            ParcelFileDescriptor.AutoCloseOutputStream autoCloseOutputStream = new ParcelFileDescriptor.AutoCloseOutputStream(parcelFileDescriptor);
            try {
                ((Bitmap) future.get()).compress(Bitmap.CompressFormat.PNG, 100, autoCloseOutputStream);
                autoCloseOutputStream.close();
            } finally {
            }
        } catch (Exception e) {
            Log.w("AppSearchProvider", "fail to write to pipe", e);
        }
    }
}
