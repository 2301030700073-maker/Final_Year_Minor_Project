package androidx.glance.state;

import android.content.Context;
import java.io.File;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public interface GlanceStateDefinition {
    Object getDataStore(Context context, String str);

    File getLocation(Context context, String str);
}
