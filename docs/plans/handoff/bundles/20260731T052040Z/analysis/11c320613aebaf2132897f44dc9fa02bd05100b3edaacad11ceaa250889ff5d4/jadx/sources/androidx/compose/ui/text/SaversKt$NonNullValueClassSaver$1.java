package androidx.compose.ui.text;

import androidx.compose.runtime.saveable.SaveableHolder;
import androidx.compose.runtime.saveable.Saver;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class SaversKt$NonNullValueClassSaver$1 implements Saver {
    public final /* synthetic */ Function1 $restore;
    public final /* synthetic */ Function2 $save;

    public SaversKt$NonNullValueClassSaver$1(Function2 function2, Function1 function1) {
        this.$save = function2;
        this.$restore = function1;
    }

    @Override // androidx.compose.runtime.saveable.Saver
    public final Object restore(Object obj) {
        return this.$restore.invoke(obj);
    }

    @Override // androidx.compose.runtime.saveable.Saver
    public final Object save(SaveableHolder saveableHolder, Object obj) {
        return this.$save.invoke(saveableHolder, obj);
    }
}
