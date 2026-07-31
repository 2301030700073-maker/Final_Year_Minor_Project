package androidx.compose.runtime.saveable;

import java.util.Map;
import kotlin.jvm.functions.Function0;
import org.acra.util.ProcessFinisher;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public interface SaveableStateRegistry {
    boolean canBeSaved(Object obj);

    Object consumeRestored(String str);

    Map performSave();

    ProcessFinisher registerProvider(String str, Function0 function0);
}
