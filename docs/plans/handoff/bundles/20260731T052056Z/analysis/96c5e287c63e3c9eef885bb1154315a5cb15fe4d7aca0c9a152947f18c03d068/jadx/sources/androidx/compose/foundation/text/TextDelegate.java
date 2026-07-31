package androidx.compose.foundation.text;

import android.content.res.AssetManager;
import android.os.Build;
import androidx.compose.foundation.lazy.layout.LazyLayoutNearestRangeState;
import androidx.compose.runtime.ParcelableSnapshotMutableIntState;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.ParagraphKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.profileinstaller.DeviceProfileWriter$$ExternalSyntheticLambda0;
import androidx.profileinstaller.Encoding;
import androidx.profileinstaller.ProfileInstaller$DiagnosticsCallback;
import androidx.room.RoomDatabase$createConnectionManager$2;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.Serializable;
import java.util.List;
import java.util.concurrent.Executor;
import kotlin.collections.ArraysKt___ArraysKt;
import okhttp3.Request;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final class TextDelegate {
    public final Object density;
    public Object fontFamilyResolver;
    public Object intrinsicsLayoutDirection;
    public Object paragraphIntrinsics;
    public final Object placeholders;
    public boolean softWrap;
    public Object style;
    public final Object text;

    public TextDelegate(AssetManager assetManager, Executor executor, ProfileInstaller$DiagnosticsCallback profileInstaller$DiagnosticsCallback, String str, File file) {
        this.softWrap = false;
        this.text = executor;
        this.style = profileInstaller$DiagnosticsCallback;
        this.placeholders = str;
        this.fontFamilyResolver = file;
        int i = Build.VERSION.SDK_INT;
        byte[] bArr = null;
        if (i >= 24) {
            if (i < 31) {
                switch (i) {
                    case 24:
                    case 25:
                        bArr = Encoding.V001_N;
                        break;
                    case 26:
                        bArr = Encoding.V005_O;
                        break;
                    case 27:
                        bArr = Encoding.V009_O_MR1;
                        break;
                    case 28:
                    case 29:
                    case 30:
                        bArr = Encoding.V010_P;
                        break;
                }
            } else {
                bArr = Encoding.V015_S;
            }
        }
        this.density = bArr;
    }

    public static int calculateFirstVisibleIndex(int[] iArr) {
        int length = iArr.length;
        int i = Integer.MAX_VALUE;
        int i2 = 0;
        while (true) {
            if (i2 >= length) {
                if (i == Integer.MAX_VALUE) {
                    break;
                }
                return i;
            }
            int i3 = iArr[i2];
            if (i3 <= 0) {
                break;
            }
            if (i > i3) {
                i = i3;
            }
            i2++;
        }
        return 0;
    }

    public static int calculateFirstVisibleScrollOffset(int[] iArr, int[] iArr2) {
        int calculateFirstVisibleIndex = calculateFirstVisibleIndex(iArr);
        int length = iArr2.length;
        int i = Integer.MAX_VALUE;
        for (int i2 = 0; i2 < length; i2++) {
            if (iArr[i2] == calculateFirstVisibleIndex) {
                i = Math.min(i, iArr2[i2]);
            }
        }
        if (i == Integer.MAX_VALUE) {
            return 0;
        }
        return i;
    }

    public void layoutIntrinsics(LayoutDirection layoutDirection) {
        Request.Builder builder = (Request.Builder) this.paragraphIntrinsics;
        if (builder == null || layoutDirection != ((LayoutDirection) this.intrinsicsLayoutDirection) || builder.getHasStaleResolvedFonts()) {
            this.intrinsicsLayoutDirection = layoutDirection;
            builder = new Request.Builder((AnnotatedString) this.text, ParagraphKt.resolveDefaults((TextStyle) this.style, layoutDirection), (List) this.placeholders, (Density) this.density, (FontFamily.Resolver) this.fontFamilyResolver);
        }
        this.paragraphIntrinsics = builder;
    }

    public FileInputStream openStreamFromAssets(AssetManager assetManager, String str) {
        try {
            return assetManager.openFd(str).createInputStream();
        } catch (FileNotFoundException e) {
            String message = e.getMessage();
            if (message == null || !message.contains("compressed")) {
                return null;
            }
            ((ProfileInstaller$DiagnosticsCallback) this.style).onDiagnosticReceived();
            return null;
        }
    }

    public void result(int i, Serializable serializable) {
        ((Executor) this.text).execute(new DeviceProfileWriter$$ExternalSyntheticLambda0(this, i, serializable, 0));
    }

    public TextDelegate(AnnotatedString annotatedString, TextStyle textStyle, boolean z, Density density, FontFamily.Resolver resolver, List list) {
        this.text = annotatedString;
        this.style = textStyle;
        this.softWrap = z;
        this.density = density;
        this.fontFamilyResolver = resolver;
        this.placeholders = list;
    }

    public TextDelegate(int[] iArr, int[] iArr2, RoomDatabase$createConnectionManager$2 roomDatabase$createConnectionManager$2) {
        this.text = roomDatabase$createConnectionManager$2;
        this.style = iArr;
        this.density = new ParcelableSnapshotMutableIntState(calculateFirstVisibleIndex(iArr));
        this.fontFamilyResolver = iArr2;
        this.placeholders = new ParcelableSnapshotMutableIntState(calculateFirstVisibleScrollOffset(iArr, iArr2));
        Integer minOrNull = ArraysKt___ArraysKt.minOrNull(iArr);
        this.intrinsicsLayoutDirection = new LazyLayoutNearestRangeState(minOrNull != null ? minOrNull.intValue() : 0, 90, 200);
    }
}
