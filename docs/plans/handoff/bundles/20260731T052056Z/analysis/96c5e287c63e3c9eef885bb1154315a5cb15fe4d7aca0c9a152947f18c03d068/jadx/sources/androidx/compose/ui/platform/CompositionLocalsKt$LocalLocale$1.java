package androidx.compose.ui.platform;

import android.content.Context;
import androidx.compose.runtime.CompositionLocalAccessorScope;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.ui.semantics.SemanticsConfiguration;
import androidx.compose.ui.semantics.SemanticsNode;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.text.intl.Locale;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class CompositionLocalsKt$LocalLocale$1 extends Lambda implements Function1 {
    public static final CompositionLocalsKt$LocalLocale$1 INSTANCE;
    public static final CompositionLocalsKt$LocalLocale$1 INSTANCE$1;
    public static final CompositionLocalsKt$LocalLocale$1 INSTANCE$2;
    public static final CompositionLocalsKt$LocalLocale$1 INSTANCE$3;
    public static final CompositionLocalsKt$LocalLocale$1 INSTANCE$4;
    public final /* synthetic */ int $r8$classId;

    static {
        int i = 1;
        INSTANCE$1 = new CompositionLocalsKt$LocalLocale$1(i, 1);
        INSTANCE$2 = new CompositionLocalsKt$LocalLocale$1(i, 2);
        INSTANCE$3 = new CompositionLocalsKt$LocalLocale$1(i, 3);
        INSTANCE = new CompositionLocalsKt$LocalLocale$1(i, 0);
        INSTANCE$4 = new CompositionLocalsKt$LocalLocale$1(i, 4);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ CompositionLocalsKt$LocalLocale$1(int i, int i2) {
        super(i);
        this.$r8$classId = i2;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        switch (this.$r8$classId) {
            case 0:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = CompositionLocalsKt.LocalProvidableLocaleList;
                PersistentCompositionLocalHashMap persistentCompositionLocalHashMap = (PersistentCompositionLocalHashMap) ((CompositionLocalAccessorScope) obj);
                persistentCompositionLocalHashMap.getClass();
                return (Locale) CollectionsKt.first((Iterable) Updater.read(persistentCompositionLocalHashMap, staticProvidableCompositionLocal));
            case 1:
                return Boolean.TRUE;
            case 2:
                SemanticsConfiguration config = ((SemanticsNode) obj).getConfig();
                return Boolean.valueOf(config.props.containsKey(SemanticsProperties.LinkTestMarker));
            case 3:
                CompositionLocalAccessorScope compositionLocalAccessorScope = (CompositionLocalAccessorScope) obj;
                StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = AndroidCompositionLocals_androidKt.LocalConfiguration;
                PersistentCompositionLocalHashMap persistentCompositionLocalHashMap2 = (PersistentCompositionLocalHashMap) compositionLocalAccessorScope;
                persistentCompositionLocalHashMap2.getClass();
                Updater.read(persistentCompositionLocalHashMap2, staticProvidableCompositionLocal2);
                return ((Context) Updater.read((PersistentCompositionLocalHashMap) compositionLocalAccessorScope, AndroidCompositionLocals_androidKt.LocalContext)).getResources();
            default:
                return Boolean.valueOf(TestTagKt.canBeSavedToBundle(obj));
        }
    }
}
