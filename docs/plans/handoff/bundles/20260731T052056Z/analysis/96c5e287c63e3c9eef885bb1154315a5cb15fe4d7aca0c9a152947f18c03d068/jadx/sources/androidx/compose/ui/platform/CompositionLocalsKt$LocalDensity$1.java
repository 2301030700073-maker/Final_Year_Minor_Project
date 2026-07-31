package androidx.compose.ui.platform;

import android.os.Looper;
import android.view.Choreographer;
import androidx.compose.ui.unit.DpKt;
import androidx.paging.CachedPagingDataKt$cachedIn$4;
import androidx.work.OperationKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.internal.MainDispatcherLoader;
import kotlinx.coroutines.scheduling.DefaultScheduler;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class CompositionLocalsKt$LocalDensity$1 extends Lambda implements Function0 {
    public static final CompositionLocalsKt$LocalDensity$1 INSTANCE;
    public static final CompositionLocalsKt$LocalDensity$1 INSTANCE$1;
    public static final CompositionLocalsKt$LocalDensity$1 INSTANCE$10;
    public static final CompositionLocalsKt$LocalDensity$1 INSTANCE$11;
    public static final CompositionLocalsKt$LocalDensity$1 INSTANCE$12;
    public static final CompositionLocalsKt$LocalDensity$1 INSTANCE$13;
    public static final CompositionLocalsKt$LocalDensity$1 INSTANCE$14;
    public static final CompositionLocalsKt$LocalDensity$1 INSTANCE$15;
    public static final CompositionLocalsKt$LocalDensity$1 INSTANCE$16;
    public static final CompositionLocalsKt$LocalDensity$1 INSTANCE$17;
    public static final CompositionLocalsKt$LocalDensity$1 INSTANCE$18;
    public static final CompositionLocalsKt$LocalDensity$1 INSTANCE$19;
    public static final CompositionLocalsKt$LocalDensity$1 INSTANCE$2;
    public static final CompositionLocalsKt$LocalDensity$1 INSTANCE$20;
    public static final CompositionLocalsKt$LocalDensity$1 INSTANCE$21;
    public static final CompositionLocalsKt$LocalDensity$1 INSTANCE$22;
    public static final CompositionLocalsKt$LocalDensity$1 INSTANCE$23;
    public static final CompositionLocalsKt$LocalDensity$1 INSTANCE$24;
    public static final CompositionLocalsKt$LocalDensity$1 INSTANCE$25;
    public static final CompositionLocalsKt$LocalDensity$1 INSTANCE$26;
    public static final CompositionLocalsKt$LocalDensity$1 INSTANCE$27;
    public static final CompositionLocalsKt$LocalDensity$1 INSTANCE$28;
    public static final CompositionLocalsKt$LocalDensity$1 INSTANCE$29;
    public static final CompositionLocalsKt$LocalDensity$1 INSTANCE$3;
    public static final CompositionLocalsKt$LocalDensity$1 INSTANCE$4;
    public static final CompositionLocalsKt$LocalDensity$1 INSTANCE$5;
    public static final CompositionLocalsKt$LocalDensity$1 INSTANCE$6;
    public static final CompositionLocalsKt$LocalDensity$1 INSTANCE$7;
    public static final CompositionLocalsKt$LocalDensity$1 INSTANCE$8;
    public static final CompositionLocalsKt$LocalDensity$1 INSTANCE$9;
    public final /* synthetic */ int $r8$classId;

    static {
        int i = 0;
        INSTANCE$1 = new CompositionLocalsKt$LocalDensity$1(i, 1);
        INSTANCE$2 = new CompositionLocalsKt$LocalDensity$1(i, 2);
        INSTANCE$3 = new CompositionLocalsKt$LocalDensity$1(i, 3);
        INSTANCE$4 = new CompositionLocalsKt$LocalDensity$1(i, 4);
        INSTANCE$5 = new CompositionLocalsKt$LocalDensity$1(i, 5);
        INSTANCE$6 = new CompositionLocalsKt$LocalDensity$1(i, 6);
        INSTANCE$7 = new CompositionLocalsKt$LocalDensity$1(i, 7);
        INSTANCE$8 = new CompositionLocalsKt$LocalDensity$1(i, 8);
        INSTANCE$9 = new CompositionLocalsKt$LocalDensity$1(i, 9);
        INSTANCE$10 = new CompositionLocalsKt$LocalDensity$1(i, 10);
        INSTANCE$11 = new CompositionLocalsKt$LocalDensity$1(i, 11);
        INSTANCE$12 = new CompositionLocalsKt$LocalDensity$1(i, 12);
        INSTANCE$13 = new CompositionLocalsKt$LocalDensity$1(i, 13);
        INSTANCE = new CompositionLocalsKt$LocalDensity$1(i, 0);
        INSTANCE$14 = new CompositionLocalsKt$LocalDensity$1(i, 14);
        INSTANCE$15 = new CompositionLocalsKt$LocalDensity$1(i, 15);
        INSTANCE$16 = new CompositionLocalsKt$LocalDensity$1(i, 16);
        INSTANCE$17 = new CompositionLocalsKt$LocalDensity$1(i, 17);
        INSTANCE$18 = new CompositionLocalsKt$LocalDensity$1(i, 18);
        INSTANCE$19 = new CompositionLocalsKt$LocalDensity$1(i, 19);
        INSTANCE$20 = new CompositionLocalsKt$LocalDensity$1(i, 20);
        INSTANCE$21 = new CompositionLocalsKt$LocalDensity$1(i, 21);
        INSTANCE$22 = new CompositionLocalsKt$LocalDensity$1(i, 22);
        INSTANCE$23 = new CompositionLocalsKt$LocalDensity$1(i, 23);
        INSTANCE$24 = new CompositionLocalsKt$LocalDensity$1(i, 24);
        INSTANCE$25 = new CompositionLocalsKt$LocalDensity$1(i, 25);
        INSTANCE$26 = new CompositionLocalsKt$LocalDensity$1(i, 26);
        INSTANCE$27 = new CompositionLocalsKt$LocalDensity$1(i, 27);
        INSTANCE$28 = new CompositionLocalsKt$LocalDensity$1(i, 28);
        INSTANCE$29 = new CompositionLocalsKt$LocalDensity$1(i, 29);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ CompositionLocalsKt$LocalDensity$1(int i, int i2) {
        super(i);
        this.$r8$classId = i2;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        Choreographer choreographer;
        Continuation continuation = null;
        switch (this.$r8$classId) {
            case 0:
                CompositionLocalsKt.noLocalProvidedFor("LocalDensity");
                throw null;
            case 1:
                AndroidCompositionLocals_androidKt.noLocalProvidedFor("LocalConfiguration");
                throw null;
            case 2:
                AndroidCompositionLocals_androidKt.noLocalProvidedFor("LocalContext");
                throw null;
            case 3:
                AndroidCompositionLocals_androidKt.noLocalProvidedFor("LocalImageVectorCache");
                throw null;
            case 4:
                AndroidCompositionLocals_androidKt.noLocalProvidedFor("LocalResourceIdCache");
                throw null;
            case 5:
                AndroidCompositionLocals_androidKt.noLocalProvidedFor("LocalView");
                throw null;
            case 6:
                if (Looper.myLooper() == Looper.getMainLooper()) {
                    choreographer = Choreographer.getInstance();
                } else {
                    DefaultScheduler defaultScheduler = Dispatchers.Default;
                    choreographer = (Choreographer) AwaitKt.runBlocking(MainDispatcherLoader.dispatcher, new CachedPagingDataKt$cachedIn$4(2, 3, continuation));
                }
                AndroidUiDispatcher androidUiDispatcher = new AndroidUiDispatcher(choreographer, DpKt.createAsync(Looper.getMainLooper()));
                return OperationKt.plus(androidUiDispatcher, androidUiDispatcher.frameClock);
            case 7:
            case 8:
                return null;
            case 9:
                CompositionLocalsKt.noLocalProvidedFor("LocalAutofillManager");
                throw null;
            case 10:
                CompositionLocalsKt.noLocalProvidedFor("LocalAutofillTree");
                throw null;
            case 11:
                CompositionLocalsKt.noLocalProvidedFor("LocalClipboard");
                throw null;
            case 12:
                CompositionLocalsKt.noLocalProvidedFor("LocalClipboardManager");
                throw null;
            case IMAGE_VALUE:
                return Boolean.TRUE;
            case LINEAR_PROGRESS_INDICATOR_VALUE:
                CompositionLocalsKt.noLocalProvidedFor("LocalFocusManager");
                throw null;
            case 15:
                CompositionLocalsKt.noLocalProvidedFor("LocalFontFamilyResolver");
                throw null;
            case LAZY_VERTICAL_GRID_VALUE:
                CompositionLocalsKt.noLocalProvidedFor("LocalFontLoader");
                throw null;
            case VERTICAL_GRID_ITEM_VALUE:
                CompositionLocalsKt.noLocalProvidedFor("LocalGraphicsContext");
                throw null;
            case RADIO_GROUP_VALUE:
                CompositionLocalsKt.noLocalProvidedFor("LocalHapticFeedback");
                throw null;
            case RADIO_BUTTON_VALUE:
                CompositionLocalsKt.noLocalProvidedFor("LocalInputManager");
                throw null;
            case RADIO_ROW_VALUE:
                CompositionLocalsKt.noLocalProvidedFor("LocalLayoutDirection");
                throw null;
            case RADIO_COLUMN_VALUE:
                return null;
            case SIZE_BOX_VALUE:
                CompositionLocalsKt.noLocalProvidedFor("LocalProvidableLocaleList");
                throw null;
            case 23:
                return Boolean.FALSE;
            case 24:
            case 25:
                return null;
            case 26:
                CompositionLocalsKt.noLocalProvidedFor("LocalTextToolbar");
                throw null;
            case 27:
                CompositionLocalsKt.noLocalProvidedFor("LocalUriHandler");
                throw null;
            case 28:
                CompositionLocalsKt.noLocalProvidedFor("LocalViewConfiguration");
                throw null;
            default:
                CompositionLocalsKt.noLocalProvidedFor("LocalWindowInfo");
                throw null;
        }
    }
}
