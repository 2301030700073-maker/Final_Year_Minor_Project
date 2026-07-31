package androidx.datastore.core;

import androidx.datastore.preferences.core.PreferencesFileSerializer;
import androidx.room.RoomDatabase$$ExternalSyntheticLambda0;
import java.util.LinkedHashSet;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class FileStorage {
    public static final LinkedHashSet activeFiles = new LinkedHashSet();
    public static final Object activeFilesLock = new Object();
    public final Function1 coordinatorProducer;
    public final Function0 produceFile;
    public final PreferencesFileSerializer serializer;

    public FileStorage(PreferencesFileSerializer preferencesFileSerializer, Function0 function0) {
        RoomDatabase$$ExternalSyntheticLambda0 roomDatabase$$ExternalSyntheticLambda0 = new RoomDatabase$$ExternalSyntheticLambda0(6);
        this.serializer = preferencesFileSerializer;
        this.coordinatorProducer = roomDatabase$$ExternalSyntheticLambda0;
        this.produceFile = function0;
    }
}
