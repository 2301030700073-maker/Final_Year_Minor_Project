package androidx.startup;

import android.content.Context;
import java.util.List;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public interface Initializer {
    Object create(Context context);

    List dependencies();
}
