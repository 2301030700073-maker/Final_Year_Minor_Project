package androidx.compose.ui.node;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.MenuItem;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.appcompat.app.AlertController;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.widget.AppCompatDrawableManager;
import androidx.appcompat.widget.DrawableUtils;
import androidx.appcompat.widget.ResourceManagerInternal;
import androidx.collection.MutableScatterSet;
import androidx.collection.ScatterSetKt;
import androidx.compose.animation.core.Animation;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.VerticalRuler;
import androidx.core.util.Pools$SimplePool;
import androidx.core.view.ViewCompat;
import androidx.lifecycle.ViewModelKt;
import androidx.navigation.NavDeepLink;
import androidx.navigation.NavDestination;
import androidx.recyclerview.widget.AdapterHelper$UpdateOp;
import androidx.recyclerview.widget.RecyclerView;
import androidx.work.Operation$State;
import androidx.work.OperationKt;
import coil3.memory.MemoryCacheService;
import com.caverock.androidsvg.SVG;
import com.google.android.material.R$styleable;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.gson.Gson$$ExternalSyntheticBUOutline0;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.WeakHashMap;
import kotlin.Pair;
import kotlin.SynchronizedLazyImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlin.text.UStringsKt;
import kotlinx.coroutines.AwaitKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.flow.SharingConfig;
import kotlinx.serialization.json.JsonConfiguration;
import kotlinx.serialization.json.JsonDecodingException;
import kotlinx.serialization.json.internal.CharMappings;
import kotlinx.serialization.json.internal.WriteModeKt;
import okhttp3.ConnectionSpec;
import okhttp3.Cookie;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;
import org.wikipedia.Constants;
import org.wikipedia.R;
import org.wikipedia.history.HistoryEntry;
import org.wikipedia.login.LoginClient;
import org.wikipedia.page.PageActivity;
import org.wikipedia.page.PageTitle;
import org.wikipedia.readinglist.LongPressMenu$show$1$1;
import org.wikipedia.staticdata.UserTalkAliasData;
import org.wikipedia.suggestededits.SuggestedEditsRecentEditsActivity;
import org.wikipedia.suggestededits.SuggestionsActivity;
import org.wikipedia.talk.TalkTopicsActivity;
import org.wikipedia.talk.UserTalkPopupHelper$$ExternalSyntheticLambda2;
import org.wikipedia.usercontrib.UserContribListActivity;
import org.wikipedia.usercontrib.UserInformationDialog;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public class RulerTrackingMap implements MenuBuilder.Callback {
    public final /* synthetic */ int $r8$classId;
    public Object accessFlags;
    public Object layoutNodes;
    public Object newRulers;
    public Object rulers;
    public int size;
    public Object values;

    public RulerTrackingMap(RecyclerView.AnonymousClass4 anonymousClass4) {
        this.$r8$classId = 3;
        this.rulers = new Pools$SimplePool(30);
        this.values = new ArrayList();
        this.accessFlags = new ArrayList();
        this.size = 0;
        this.layoutNodes = anonymousClass4;
        this.newRulers = new MemoryCacheService(2, this);
    }

    public static RulerTrackingMap create(Context context, int i) {
        Operation$State.checkArgument("Cannot create a CalendarItemStyle with a styleResId of 0", i != 0);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(i, R$styleable.MaterialCalendarItem);
        Rect rect = new Rect(obtainStyledAttributes.getDimensionPixelOffset(0, 0), obtainStyledAttributes.getDimensionPixelOffset(2, 0), obtainStyledAttributes.getDimensionPixelOffset(1, 0), obtainStyledAttributes.getDimensionPixelOffset(3, 0));
        ColorStateList colorStateList = OperationKt.getColorStateList(context, obtainStyledAttributes, 4);
        ColorStateList colorStateList2 = OperationKt.getColorStateList(context, obtainStyledAttributes, 9);
        ColorStateList colorStateList3 = OperationKt.getColorStateList(context, obtainStyledAttributes, 7);
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(8, 0);
        ShapeAppearanceModel build = ShapeAppearanceModel.builder(context, obtainStyledAttributes.getResourceId(5, 0), obtainStyledAttributes.getResourceId(6, 0)).build();
        obtainStyledAttributes.recycle();
        return new RulerTrackingMap(colorStateList, colorStateList2, colorStateList3, dimensionPixelSize, build, rect);
    }

    public static /* synthetic */ void fail$default(RulerTrackingMap rulerTrackingMap, String str, int i, String str2, int i2) {
        if ((i2 & 2) != 0) {
            i = rulerTrackingMap.size;
        }
        if ((i2 & 4) != 0) {
            str2 = null;
        }
        rulerTrackingMap.fail(i, str, str2);
        throw null;
    }

    public int appendHex(CharSequence charSequence, int i) {
        int i2 = i + 4;
        if (i2 < charSequence.length()) {
            ((StringBuilder) this.layoutNodes).append((char) (fromHexChar(charSequence, i + 3) + (fromHexChar(charSequence, i) << 12) + (fromHexChar(charSequence, i + 1) << 8) + (fromHexChar(charSequence, i + 2) << 4)));
            return i2;
        }
        this.size = i;
        if (i2 < charSequence.length()) {
            return appendHex(charSequence, this.size);
        }
        fail$default(this, "Unexpected EOF during unicode escape", 0, null, 6);
        throw null;
    }

    public void applySupportBackgroundTint() {
        View view = (View) this.rulers;
        Drawable background = view.getBackground();
        if (background != null) {
            if (((ConnectionSpec.Builder) this.accessFlags) != null) {
                ConnectionSpec.Builder builder = (ConnectionSpec.Builder) this.newRulers;
                if (builder == null) {
                    builder = new ConnectionSpec.Builder();
                    this.newRulers = builder;
                }
                builder.cipherSuites = null;
                builder.supportsTlsExtensions = false;
                builder.tlsVersions = null;
                builder.tls = false;
                WeakHashMap weakHashMap = ViewCompat.sViewPropertyAnimatorMap;
                ColorStateList backgroundTintList = view.getBackgroundTintList();
                if (backgroundTintList != null) {
                    builder.supportsTlsExtensions = true;
                    builder.cipherSuites = backgroundTintList;
                }
                PorterDuff.Mode backgroundTintMode = view.getBackgroundTintMode();
                if (backgroundTintMode != null) {
                    builder.tls = true;
                    builder.tlsVersions = backgroundTintMode;
                }
                if (builder.supportsTlsExtensions || builder.tls) {
                    int[] drawableState = view.getDrawableState();
                    PorterDuff.Mode mode = AppCompatDrawableManager.DEFAULT_MODE;
                    ResourceManagerInternal.tintDrawable(background, builder, drawableState);
                    return;
                }
            }
            ConnectionSpec.Builder builder2 = (ConnectionSpec.Builder) this.layoutNodes;
            if (builder2 != null) {
                int[] drawableState2 = view.getDrawableState();
                PorterDuff.Mode mode2 = AppCompatDrawableManager.DEFAULT_MODE;
                ResourceManagerInternal.tintDrawable(background, builder2, drawableState2);
            } else {
                ConnectionSpec.Builder builder3 = (ConnectionSpec.Builder) this.accessFlags;
                if (builder3 != null) {
                    int[] drawableState3 = view.getDrawableState();
                    PorterDuff.Mode mode3 = AppCompatDrawableManager.DEFAULT_MODE;
                    ResourceManagerInternal.tintDrawable(background, builder3, drawableState3);
                }
            }
        }
    }

    public boolean canConsumeValue() {
        int i = this.size;
        if (i == -1) {
            return false;
        }
        String str = (String) this.newRulers;
        while (i < str.length()) {
            char charAt = str.charAt(i);
            if (charAt != ' ' && charAt != '\n' && charAt != '\r' && charAt != '\t') {
                this.size = i;
                return (charAt == ',' || charAt == ':' || charAt == ']' || charAt == '}') ? false : true;
            }
            i++;
        }
        this.size = i;
        return false;
    }

    public boolean canFindInPreLayout(int i) {
        ArrayList arrayList = (ArrayList) this.accessFlags;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            AdapterHelper$UpdateOp adapterHelper$UpdateOp = (AdapterHelper$UpdateOp) arrayList.get(i2);
            int i3 = adapterHelper$UpdateOp.cmd;
            if (i3 != 8) {
                if (i3 == 1) {
                    int i4 = adapterHelper$UpdateOp.positionStart;
                    int i5 = adapterHelper$UpdateOp.itemCount + i4;
                    while (i4 < i5) {
                        if (findPositionOffset(i4, i2 + 1) == i) {
                            return true;
                        }
                        i4++;
                    }
                } else {
                    continue;
                }
            } else {
                if (findPositionOffset(adapterHelper$UpdateOp.itemCount, i2 + 1) == i) {
                    return true;
                }
            }
        }
        return false;
    }

    public void consumeBooleanLiteral(int i, String str) {
        String str2 = (String) this.newRulers;
        if (str2.length() - i < str.length()) {
            fail$default(this, "Unexpected end of boolean literal", 0, null, 6);
            throw null;
        }
        int length = str.length();
        for (int i2 = 0; i2 < length; i2++) {
            if (str.charAt(i2) != (str2.charAt(i + i2) | ' ')) {
                fail$default(this, "Expected valid boolean literal prefix, but had '" + consumeStringLenient() + '\'', 0, null, 6);
                throw null;
            }
        }
        this.size = str.length() + i;
    }

    public String consumeKeyString() {
        String str;
        StringBuilder sb = (StringBuilder) this.layoutNodes;
        String str2 = (String) this.newRulers;
        consumeNextToken('\"');
        int i = this.size;
        int indexOf$default = StringsKt.indexOf$default(str2, '\"', i, 4);
        if (indexOf$default == -1) {
            consumeStringLenient();
            int i2 = this.size;
            fail$default(this, Animation.CC.m("Expected quotation mark '\"', but had '", (i2 == str2.length() || i2 < 0) ? "EOF" : String.valueOf(str2.charAt(i2)), "' instead"), i2, null, 4);
            throw null;
        }
        int i3 = i;
        while (i3 < indexOf$default) {
            if (str2.charAt(i3) == '\\') {
                int i4 = this.size;
                char charAt = str2.charAt(i3);
                boolean z = false;
                while (charAt != '\"') {
                    if (charAt == '\\') {
                        sb.append((CharSequence) str2, i4, i3);
                        int prefetchOrEof = prefetchOrEof(i3 + 1);
                        if (prefetchOrEof == -1) {
                            fail$default(this, "Expected escape sequence to continue, got EOF", 0, null, 6);
                            throw null;
                        }
                        int i5 = prefetchOrEof + 1;
                        char charAt2 = str2.charAt(prefetchOrEof);
                        if (charAt2 == 'u') {
                            i5 = appendHex(str2, i5);
                        } else {
                            char c = charAt2 < 'u' ? CharMappings.ESCAPE_2_CHAR[charAt2] : (char) 0;
                            if (c == 0) {
                                fail$default(this, "Invalid escaped char '" + charAt2 + '\'', 0, null, 6);
                                throw null;
                            }
                            sb.append(c);
                        }
                        i4 = prefetchOrEof(i5);
                        if (i4 == -1) {
                            fail$default(this, "Unexpected EOF", i4, null, 4);
                            throw null;
                        }
                    } else {
                        i3++;
                        if (i3 >= str2.length()) {
                            sb.append((CharSequence) str2, i4, i3);
                            i4 = prefetchOrEof(i3);
                            if (i4 == -1) {
                                fail$default(this, "Unexpected EOF", i4, null, 4);
                                throw null;
                            }
                        } else {
                            continue;
                            charAt = str2.charAt(i3);
                        }
                    }
                    i3 = i4;
                    z = true;
                    charAt = str2.charAt(i3);
                }
                if (z) {
                    sb.append((CharSequence) str2, i4, i3);
                    String sb2 = sb.toString();
                    sb.setLength(0);
                    str = sb2;
                } else {
                    str = str2.subSequence(i4, i3).toString();
                }
                this.size = i3 + 1;
                return str;
            }
            i3++;
        }
        this.size = indexOf$default + 1;
        return str2.substring(i, indexOf$default);
    }

    public void consumeNextToken(char c) {
        int i = this.size;
        if (i == -1) {
            unexpectedToken(c);
            throw null;
        }
        String str = (String) this.newRulers;
        while (i < str.length()) {
            int i2 = i + 1;
            char charAt = str.charAt(i);
            if (charAt != ' ' && charAt != '\n' && charAt != '\r' && charAt != '\t') {
                this.size = i2;
                if (charAt == c) {
                    return;
                }
                unexpectedToken(c);
                throw null;
            }
            i = i2;
        }
        this.size = -1;
        unexpectedToken(c);
        throw null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x01b6, code lost:
    
        fail$default(r22, "Expected numeric literal", r12, null, 4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x01bc, code lost:
    
        throw null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x0121, code lost:
    
        r3 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0104, code lost:
    
        fail$default(r22, "Unexpected symbol '" + r15 + "' in numeric literal", r12, null, 4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0118, code lost:
    
        throw null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x011d, code lost:
    
        if (r12 == r1) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x011f, code lost:
    
        r3 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0122, code lost:
    
        if (r1 == r12) goto L74;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0124, code lost:
    
        if (r14 == false) goto L75;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0128, code lost:
    
        if (r1 == (r12 - 1)) goto L74;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x012e, code lost:
    
        if (r20 == false) goto L84;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0130, code lost:
    
        if (r3 == false) goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0138, code lost:
    
        if (r2.charAt(r12) != '\"') goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x013a, code lost:
    
        r12 = r12 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x013d, code lost:
    
        fail$default(r22, "Expected closing quotation mark", r12, null, 4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0144, code lost:
    
        throw null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0145, code lost:
    
        fail$default(r22, "EOF", 0, null, 6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x014b, code lost:
    
        throw null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x014c, code lost:
    
        r22.size = r12;
        r1 = r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0150, code lost:
    
        if (r21 == false) goto L106;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0152, code lost:
    
        r1 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0155, code lost:
    
        if (r11 != false) goto L89;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0157, code lost:
    
        r3 = java.lang.Math.pow(10.0d, -r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0166, code lost:
    
        r1 = r1 * r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x016b, code lost:
    
        if (r1 > 9.223372036854776E18d) goto L102;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0171, code lost:
    
        if (r1 < (-9.223372036854776E18d)) goto L102;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0179, code lost:
    
        if (java.lang.Math.floor(r1) != r1) goto L100;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x017b, code lost:
    
        r10 = (long) r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x01a5, code lost:
    
        if (r14 == false) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x01a7, code lost:
    
        return r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x01ac, code lost:
    
        if (r10 == Long.MIN_VALUE) goto L113;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x01af, code lost:
    
        return -r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x01b0, code lost:
    
        fail$default(r22, "Numeric value overflow", 0, null, 6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x01b5, code lost:
    
        throw null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x017e, code lost:
    
        fail$default(r22, "Can't convert " + r1 + " to Long", 0, null, 6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x0197, code lost:
    
        throw null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x0198, code lost:
    
        fail$default(r22, "Numeric value overflow", 0, null, 6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x019e, code lost:
    
        throw null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x015f, code lost:
    
        if (r11 != true) goto L104;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x0161, code lost:
    
        r3 = java.lang.Math.pow(10.0d, r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x019f, code lost:
    
        coil3.util.ContextsKt$$ExternalSyntheticBUOutline0.m();
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x01a2, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x01a3, code lost:
    
        r10 = r1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long consumeNumericLiteral() {
        /*
            Method dump skipped, instructions count: 452
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.node.RulerTrackingMap.consumeNumericLiteral():long");
    }

    public void consumePostponedUpdates() {
        ArrayList arrayList = (ArrayList) this.accessFlags;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ((RecyclerView.AnonymousClass4) this.layoutNodes).dispatchUpdate((AdapterHelper$UpdateOp) arrayList.get(i));
        }
        recycleUpdateOpsAndClearList(arrayList);
        this.size = 0;
    }

    public String consumeString() {
        String str = (String) this.accessFlags;
        if (str == null) {
            return consumeKeyString();
        }
        str.getClass();
        this.accessFlags = null;
        return str;
    }

    public String consumeStringLenient() {
        String str;
        StringBuilder sb = (StringBuilder) this.layoutNodes;
        String str2 = (String) this.newRulers;
        String str3 = (String) this.accessFlags;
        if (str3 != null) {
            str3.getClass();
            this.accessFlags = null;
            return str3;
        }
        int skipWhitespaces = skipWhitespaces();
        if (skipWhitespaces >= str2.length() || skipWhitespaces == -1) {
            fail$default(this, "EOF", skipWhitespaces, null, 4);
            throw null;
        }
        byte charToTokenClass = WriteModeKt.charToTokenClass(str2.charAt(skipWhitespaces));
        if (charToTokenClass == 1) {
            return consumeString();
        }
        if (charToTokenClass != 0) {
            fail$default(this, "Expected beginning of the string, but got " + str2.charAt(skipWhitespaces), 0, null, 6);
            throw null;
        }
        boolean z = false;
        while (WriteModeKt.charToTokenClass(str2.charAt(skipWhitespaces)) == 0) {
            skipWhitespaces++;
            if (skipWhitespaces >= str2.length()) {
                sb.append((CharSequence) str2, this.size, skipWhitespaces);
                int prefetchOrEof = prefetchOrEof(skipWhitespaces);
                if (prefetchOrEof == -1) {
                    this.size = skipWhitespaces;
                    sb.append((CharSequence) str2, 0, 0);
                    String sb2 = sb.toString();
                    sb.setLength(0);
                    return sb2;
                }
                skipWhitespaces = prefetchOrEof;
                z = true;
            }
        }
        int i = this.size;
        if (z) {
            sb.append((CharSequence) str2, i, skipWhitespaces);
            String sb3 = sb.toString();
            sb.setLength(0);
            str = sb3;
        } else {
            str = str2.subSequence(i, skipWhitespaces).toString();
        }
        this.size = skipWhitespaces;
        return str;
    }

    public void consumeUpdatesInOnePass() {
        RecyclerView.AnonymousClass4 anonymousClass4 = (RecyclerView.AnonymousClass4) this.layoutNodes;
        consumePostponedUpdates();
        ArrayList arrayList = (ArrayList) this.values;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            AdapterHelper$UpdateOp adapterHelper$UpdateOp = (AdapterHelper$UpdateOp) arrayList.get(i);
            int i2 = adapterHelper$UpdateOp.cmd;
            if (i2 == 1) {
                anonymousClass4.dispatchUpdate(adapterHelper$UpdateOp);
                anonymousClass4.offsetPositionsForAdd(adapterHelper$UpdateOp.positionStart, adapterHelper$UpdateOp.itemCount);
            } else if (i2 == 2) {
                anonymousClass4.dispatchUpdate(adapterHelper$UpdateOp);
                int i3 = adapterHelper$UpdateOp.positionStart;
                int i4 = adapterHelper$UpdateOp.itemCount;
                RecyclerView recyclerView = anonymousClass4.this$0;
                recyclerView.offsetPositionRecordsForRemove(i3, i4, true);
                recyclerView.mItemsAddedOrRemoved = true;
                recyclerView.mState.mDeletedInvisibleItemCountSincePreviousLayout += i4;
            } else if (i2 == 4) {
                anonymousClass4.dispatchUpdate(adapterHelper$UpdateOp);
                anonymousClass4.markViewHoldersUpdated(adapterHelper$UpdateOp.positionStart, adapterHelper$UpdateOp.itemCount, adapterHelper$UpdateOp.payload);
            } else if (i2 == 8) {
                anonymousClass4.dispatchUpdate(adapterHelper$UpdateOp);
                anonymousClass4.offsetPositionsForMove(adapterHelper$UpdateOp.positionStart, adapterHelper$UpdateOp.itemCount);
            }
        }
        recycleUpdateOpsAndClearList(arrayList);
        this.size = 0;
    }

    public void dispatchAndUpdateViewHolders(AdapterHelper$UpdateOp adapterHelper$UpdateOp) {
        int i;
        Pools$SimplePool pools$SimplePool = (Pools$SimplePool) this.rulers;
        int i2 = adapterHelper$UpdateOp.cmd;
        if (i2 == 1 || i2 == 8) {
            _UtilJvmKt$$ExternalSyntheticLambda0.m("should not dispatch add or move for pre layout");
            return;
        }
        int updatePositionWithPostponed = updatePositionWithPostponed(adapterHelper$UpdateOp.positionStart, i2);
        int i3 = adapterHelper$UpdateOp.positionStart;
        int i4 = adapterHelper$UpdateOp.cmd;
        if (i4 == 2) {
            i = 0;
        } else {
            if (i4 != 4) {
                Gson$$ExternalSyntheticBUOutline0.m("op should be remove or update.", adapterHelper$UpdateOp);
                return;
            }
            i = 1;
        }
        int i5 = 1;
        for (int i6 = 1; i6 < adapterHelper$UpdateOp.itemCount; i6++) {
            int updatePositionWithPostponed2 = updatePositionWithPostponed((i * i6) + adapterHelper$UpdateOp.positionStart, adapterHelper$UpdateOp.cmd);
            int i7 = adapterHelper$UpdateOp.cmd;
            if (i7 == 2 ? updatePositionWithPostponed2 != updatePositionWithPostponed : !(i7 == 4 && updatePositionWithPostponed2 == updatePositionWithPostponed + 1)) {
                AdapterHelper$UpdateOp obtainUpdateOp = obtainUpdateOp(adapterHelper$UpdateOp.payload, i7, updatePositionWithPostponed, i5);
                dispatchFirstPassAndUpdateViewHolders(obtainUpdateOp, i3);
                obtainUpdateOp.payload = null;
                pools$SimplePool.mo741release((Object) obtainUpdateOp);
                if (adapterHelper$UpdateOp.cmd == 4) {
                    i3 += i5;
                }
                i5 = 1;
                updatePositionWithPostponed = updatePositionWithPostponed2;
            } else {
                i5++;
            }
        }
        Object obj = adapterHelper$UpdateOp.payload;
        adapterHelper$UpdateOp.payload = null;
        pools$SimplePool.mo741release((Object) adapterHelper$UpdateOp);
        if (i5 > 0) {
            AdapterHelper$UpdateOp obtainUpdateOp2 = obtainUpdateOp(obj, adapterHelper$UpdateOp.cmd, updatePositionWithPostponed, i5);
            dispatchFirstPassAndUpdateViewHolders(obtainUpdateOp2, i3);
            obtainUpdateOp2.payload = null;
            pools$SimplePool.mo741release((Object) obtainUpdateOp2);
        }
    }

    public void dispatchFirstPassAndUpdateViewHolders(AdapterHelper$UpdateOp adapterHelper$UpdateOp, int i) {
        RecyclerView.AnonymousClass4 anonymousClass4 = (RecyclerView.AnonymousClass4) this.layoutNodes;
        anonymousClass4.dispatchUpdate(adapterHelper$UpdateOp);
        int i2 = adapterHelper$UpdateOp.cmd;
        if (i2 != 2) {
            if (i2 == 4) {
                anonymousClass4.markViewHoldersUpdated(i, adapterHelper$UpdateOp.itemCount, adapterHelper$UpdateOp.payload);
                return;
            } else {
                _UtilJvmKt$$ExternalSyntheticLambda0.m("only remove and update ops can be dispatched in first pass");
                return;
            }
        }
        int i3 = adapterHelper$UpdateOp.itemCount;
        RecyclerView recyclerView = anonymousClass4.this$0;
        recyclerView.offsetPositionRecordsForRemove(i, i3, true);
        recyclerView.mItemsAddedOrRemoved = true;
        recyclerView.mState.mDeletedInvisibleItemCountSincePreviousLayout += i3;
    }

    public void fail(int i, String str, String str2) {
        String path = ((SharingConfig) this.values).getPath();
        String str3 = (String) this.newRulers;
        str3.getClass();
        throw new JsonDecodingException(WriteModeKt.formatDecodingException(i, str, path, str2, ((JsonConfiguration) this.rulers).exceptionsWithDebugInfo ? WriteModeKt.minify(str3, i).toString() : null));
    }

    public int findPositionOffset(int i, int i2) {
        ArrayList arrayList = (ArrayList) this.accessFlags;
        int size = arrayList.size();
        while (i2 < size) {
            AdapterHelper$UpdateOp adapterHelper$UpdateOp = (AdapterHelper$UpdateOp) arrayList.get(i2);
            int i3 = adapterHelper$UpdateOp.cmd;
            int i4 = adapterHelper$UpdateOp.positionStart;
            if (i3 == 8) {
                if (i4 == i) {
                    i = adapterHelper$UpdateOp.itemCount;
                } else {
                    if (i4 < i) {
                        i--;
                    }
                    if (adapterHelper$UpdateOp.itemCount <= i) {
                        i++;
                    }
                }
            } else if (i4 > i) {
                continue;
            } else if (i3 == 2) {
                int i5 = adapterHelper$UpdateOp.itemCount;
                if (i < i4 + i5) {
                    return -1;
                }
                i -= i5;
            } else if (i3 == 1) {
                i += adapterHelper$UpdateOp.itemCount;
            }
            i2++;
        }
        return i;
    }

    public int fromHexChar(CharSequence charSequence, int i) {
        char charAt = charSequence.charAt(i);
        if ('0' <= charAt && charAt < ':') {
            return charAt - '0';
        }
        if ('a' <= charAt && charAt < 'g') {
            return charAt - 'W';
        }
        if ('A' <= charAt && charAt < 'G') {
            return charAt - '7';
        }
        fail$default(this, "Invalid toHexChar char '" + charAt + "' in unicode escape", 0, null, 6);
        throw null;
    }

    public ColorStateList getSupportBackgroundTintList() {
        ConnectionSpec.Builder builder = (ConnectionSpec.Builder) this.layoutNodes;
        if (builder != null) {
            return (ColorStateList) builder.cipherSuites;
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        ConnectionSpec.Builder builder = (ConnectionSpec.Builder) this.layoutNodes;
        if (builder != null) {
            return (PorterDuff.Mode) builder.tlsVersions;
        }
        return null;
    }

    public boolean hasPendingUpdates() {
        return ((ArrayList) this.values).size() > 0;
    }

    public void loadFromAttributes(AttributeSet attributeSet, int i) {
        ColorStateList tintList;
        View view = (View) this.rulers;
        Context context = view.getContext();
        int[] iArr = androidx.appcompat.R$styleable.ViewBackgroundHelper;
        SVG obtainStyledAttributes = SVG.obtainStyledAttributes(i, 0, context, attributeSet, iArr);
        TypedArray typedArray = (TypedArray) obtainStyledAttributes.cssRules;
        View view2 = (View) this.rulers;
        ViewCompat.saveAttributeDataForStyleable(view2, view2.getContext(), iArr, attributeSet, (TypedArray) obtainStyledAttributes.cssRules, i);
        try {
            if (typedArray.hasValue(0)) {
                this.size = typedArray.getResourceId(0, -1);
                AppCompatDrawableManager appCompatDrawableManager = (AppCompatDrawableManager) this.values;
                Context context2 = view.getContext();
                int i2 = this.size;
                synchronized (appCompatDrawableManager) {
                    tintList = appCompatDrawableManager.mResourceManager.getTintList(context2, i2);
                }
                if (tintList != null) {
                    setInternalBackgroundTint(tintList);
                }
            }
            if (typedArray.hasValue(1)) {
                view.setBackgroundTintList(obtainStyledAttributes.getColorStateList(1));
            }
            if (typedArray.hasValue(2)) {
                view.setBackgroundTintMode(DrawableUtils.parseTintMode(typedArray.getInt(2, -1), null));
            }
            obtainStyledAttributes.recycle();
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }

    public NavDestination.DeepLinkMatch matchRoute$navigation_common_release(String str) {
        NavDeepLink navDeepLink;
        str.getClass();
        SynchronizedLazyImpl synchronizedLazyImpl = (SynchronizedLazyImpl) this.newRulers;
        if (synchronizedLazyImpl == null || (navDeepLink = (NavDeepLink) synchronizedLazyImpl.getValue()) == null) {
            return null;
        }
        int i = NavDestination.$r8$clinit;
        Uri parse = Uri.parse("android-app://androidx.navigation/".concat(str));
        parse.getClass();
        Bundle matchingArguments = navDeepLink.getMatchingArguments(parse, (LinkedHashMap) this.accessFlags);
        if (matchingArguments == null) {
            return null;
        }
        return new NavDestination.DeepLinkMatch((NavDestination) this.rulers, matchingArguments, navDeepLink.isExactDeepLink, navDeepLink.calculateMatchingPathSegments$navigation_common_release(parse), false);
    }

    public AdapterHelper$UpdateOp obtainUpdateOp(Object obj, int i, int i2, int i3) {
        AdapterHelper$UpdateOp adapterHelper$UpdateOp = (AdapterHelper$UpdateOp) ((Pools$SimplePool) this.rulers).acquire();
        if (adapterHelper$UpdateOp != null) {
            adapterHelper$UpdateOp.cmd = i;
            adapterHelper$UpdateOp.positionStart = i2;
            adapterHelper$UpdateOp.itemCount = i3;
            adapterHelper$UpdateOp.payload = obj;
            return adapterHelper$UpdateOp;
        }
        AdapterHelper$UpdateOp adapterHelper$UpdateOp2 = new AdapterHelper$UpdateOp();
        adapterHelper$UpdateOp2.cmd = i;
        adapterHelper$UpdateOp2.positionStart = i2;
        adapterHelper$UpdateOp2.itemCount = i3;
        adapterHelper$UpdateOp2.payload = obj;
        return adapterHelper$UpdateOp2;
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
    public boolean onMenuItemSelected(MenuBuilder menuBuilder, MenuItem menuItem) {
        Long l;
        Integer num = (Integer) this.layoutNodes;
        final PageTitle pageTitle = (PageTitle) this.values;
        final AppCompatActivity appCompatActivity = (AppCompatActivity) this.rulers;
        menuItem.getClass();
        int itemId = menuItem.getItemId();
        if (itemId == R.id.menu_user_profile_page) {
            if ((appCompatActivity instanceof SuggestedEditsRecentEditsActivity) || (appCompatActivity instanceof SuggestionsActivity)) {
                Cookie.Companion.submitPatrollerActivityEvent("menu_user_page_click", appCompatActivity instanceof SuggestionsActivity ? "pt_edit" : "pt_recent_changes", "");
            }
            HistoryEntry historyEntry = new HistoryEntry(this.size, pageTitle);
            int i = PageActivity.$r8$clinit;
            appCompatActivity.startActivity(LoginClient.newIntentForNewTab(appCompatActivity, historyEntry, pageTitle));
        } else if (itemId == R.id.menu_user_talk_page) {
            if ((appCompatActivity instanceof SuggestedEditsRecentEditsActivity) || (appCompatActivity instanceof SuggestionsActivity)) {
                Cookie.Companion.submitPatrollerActivityEvent("menu_talk_page_click", appCompatActivity instanceof SuggestionsActivity ? "pt_edit" : "pt_recent_changes", "");
            }
            PageTitle pageTitle2 = new PageTitle(UserTalkAliasData.valueFor(pageTitle.wikiSite.languageCode), pageTitle.getText(), pageTitle.wikiSite);
            int i2 = TalkTopicsActivity.$r8$clinit;
            appCompatActivity.startActivity(Headers.Companion.newIntent(appCompatActivity, pageTitle2, (Constants.InvokeSource) this.accessFlags));
        } else {
            int i3 = 0;
            if (itemId == R.id.menu_user_information) {
                if ((appCompatActivity instanceof SuggestedEditsRecentEditsActivity) || (appCompatActivity instanceof SuggestionsActivity)) {
                    Cookie.Companion.submitPatrollerActivityEvent("menu_user_info_click", appCompatActivity instanceof SuggestionsActivity ? "pt_edit" : "pt_recent_changes", "");
                }
                String text = pageTitle.getText();
                UserInformationDialog userInformationDialog = new UserInformationDialog();
                userInformationDialog.setArguments(UStringsKt.bundleOf(new Pair("username", text)));
                userInformationDialog.show(appCompatActivity.getSupportFragmentManager(), null);
            } else if (itemId == R.id.menu_user_contributions_page) {
                if ((appCompatActivity instanceof SuggestedEditsRecentEditsActivity) || (appCompatActivity instanceof SuggestionsActivity)) {
                    Cookie.Companion.submitPatrollerActivityEvent("menu_user_contribs_click", appCompatActivity instanceof SuggestionsActivity ? "pt_edit" : "pt_recent_changes", "");
                }
                int i4 = UserContribListActivity.$r8$clinit;
                appCompatActivity.startActivity(HttpUrl.Companion.newIntent(appCompatActivity, pageTitle.getText()));
            } else if (itemId == R.id.menu_user_thank) {
                if ((appCompatActivity instanceof SuggestedEditsRecentEditsActivity) || (appCompatActivity instanceof SuggestionsActivity)) {
                    Cookie.Companion.submitPatrollerActivityEvent("menu_user_thank_click", appCompatActivity instanceof SuggestionsActivity ? "pt_edit" : "pt_recent_changes", "");
                }
                if (num != null && (l = (Long) this.newRulers) != null) {
                    final long longValue = l.longValue();
                    FrameLayout frameLayout = new FrameLayout(appCompatActivity);
                    MaterialAlertDialogBuilder materialAlertDialogBuilder = new MaterialAlertDialogBuilder(appCompatActivity, 0);
                    ((AlertController.AlertParams) materialAlertDialogBuilder.array).mView = frameLayout;
                    materialAlertDialogBuilder.setPositiveButton(R.string.thank_dialog_positive_button_text, new DialogInterface.OnClickListener() { // from class: org.wikipedia.talk.UserTalkPopupHelper$$ExternalSyntheticLambda1
                        @Override // android.content.DialogInterface.OnClickListener
                        public final void onClick(DialogInterface dialogInterface, int i5) {
                            AppCompatActivity appCompatActivity2 = AppCompatActivity.this;
                            if ((appCompatActivity2 instanceof SuggestedEditsRecentEditsActivity) || (appCompatActivity2 instanceof SuggestionsActivity)) {
                                Cookie.Companion.submitPatrollerActivityEvent("thank_confirm", appCompatActivity2 instanceof SuggestionsActivity ? "pt_edit" : "pt_recent_changes", "");
                            }
                            PageTitle pageTitle3 = pageTitle;
                            AwaitKt.launch$default(ViewModelKt.getLifecycleScope(appCompatActivity2), new UserTalkPopupHelper$sendThanks$$inlined$CoroutineExceptionHandler$1(Job.Key.$$INSTANCE$1, 0), null, new LongPressMenu$show$1$1(pageTitle3.wikiSite, Long.valueOf(longValue), appCompatActivity2, pageTitle3, null, 11), 2);
                        }
                    });
                    materialAlertDialogBuilder.setNegativeButton(R.string.thank_dialog_negative_button_text, new UserTalkPopupHelper$$ExternalSyntheticLambda2(appCompatActivity, i3));
                    AlertDialog create = materialAlertDialogBuilder.create();
                    create.getLayoutInflater().inflate(R.layout.view_thank_dialog, frameLayout);
                    create.show();
                }
            }
        }
        return true;
    }

    @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
    public void onMenuModeChange(MenuBuilder menuBuilder) {
        menuBuilder.getClass();
    }

    public void onSetBackgroundDrawable() {
        this.size = -1;
        setInternalBackgroundTint(null);
        applySupportBackgroundTint();
    }

    public void onSetBackgroundResource(int i) {
        ColorStateList colorStateList;
        this.size = i;
        AppCompatDrawableManager appCompatDrawableManager = (AppCompatDrawableManager) this.values;
        if (appCompatDrawableManager != null) {
            Context context = ((View) this.rulers).getContext();
            synchronized (appCompatDrawableManager) {
                colorStateList = appCompatDrawableManager.mResourceManager.getTintList(context, i);
            }
        } else {
            colorStateList = null;
        }
        setInternalBackgroundTint(colorStateList);
        applySupportBackgroundTint();
    }

    public String peekLeadingMatchingValue(String str) {
        str.getClass();
        int i = this.size;
        try {
            if (consumeNextToken() == 6 && Intrinsics.areEqual(peekString(), str)) {
                this.accessFlags = null;
                if (consumeNextToken() == 5) {
                    return peekString();
                }
            }
            return null;
        } finally {
            this.size = i;
            this.accessFlags = null;
        }
    }

    public byte peekNextToken() {
        String str = (String) this.newRulers;
        int i = this.size;
        while (true) {
            int prefetchOrEof = prefetchOrEof(i);
            if (prefetchOrEof == -1) {
                this.size = prefetchOrEof;
                return (byte) 10;
            }
            char charAt = str.charAt(prefetchOrEof);
            if (charAt != '\t' && charAt != '\n' && charAt != '\r' && charAt != ' ') {
                this.size = prefetchOrEof;
                return WriteModeKt.charToTokenClass(charAt);
            }
            i = prefetchOrEof + 1;
        }
    }

    public String peekString() {
        if (peekNextToken() != 1) {
            return null;
        }
        String consumeString = consumeString();
        this.accessFlags = consumeString;
        return consumeString;
    }

    public void postponeAndUpdateViewHolders(AdapterHelper$UpdateOp adapterHelper$UpdateOp) {
        RecyclerView.AnonymousClass4 anonymousClass4 = (RecyclerView.AnonymousClass4) this.layoutNodes;
        ((ArrayList) this.accessFlags).add(adapterHelper$UpdateOp);
        int i = adapterHelper$UpdateOp.cmd;
        if (i == 1) {
            anonymousClass4.offsetPositionsForAdd(adapterHelper$UpdateOp.positionStart, adapterHelper$UpdateOp.itemCount);
            return;
        }
        if (i == 2) {
            int i2 = adapterHelper$UpdateOp.positionStart;
            int i3 = adapterHelper$UpdateOp.itemCount;
            RecyclerView recyclerView = anonymousClass4.this$0;
            recyclerView.offsetPositionRecordsForRemove(i2, i3, false);
            recyclerView.mItemsAddedOrRemoved = true;
            return;
        }
        if (i == 4) {
            anonymousClass4.markViewHoldersUpdated(adapterHelper$UpdateOp.positionStart, adapterHelper$UpdateOp.itemCount, adapterHelper$UpdateOp.payload);
        } else if (i == 8) {
            anonymousClass4.offsetPositionsForMove(adapterHelper$UpdateOp.positionStart, adapterHelper$UpdateOp.itemCount);
        } else {
            Gson$$ExternalSyntheticBUOutline0.m("Unknown update op type for ", adapterHelper$UpdateOp);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:118:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x00ae A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0012 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:130:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0130 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0123 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void preProcess() {
        /*
            Method dump skipped, instructions count: 706
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.node.RulerTrackingMap.preProcess():void");
    }

    public int prefetchOrEof(int i) {
        if (i < ((String) this.newRulers).length()) {
            return i;
        }
        return -1;
    }

    public void recycleUpdateOpsAndClearList(ArrayList arrayList) {
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            AdapterHelper$UpdateOp adapterHelper$UpdateOp = (AdapterHelper$UpdateOp) arrayList.get(i);
            adapterHelper$UpdateOp.payload = null;
            ((Pools$SimplePool) this.rulers).mo741release((Object) adapterHelper$UpdateOp);
        }
        arrayList.clear();
    }

    public void setInternalBackgroundTint(ColorStateList colorStateList) {
        if (colorStateList != null) {
            ConnectionSpec.Builder builder = (ConnectionSpec.Builder) this.accessFlags;
            if (builder == null) {
                builder = new ConnectionSpec.Builder();
                this.accessFlags = builder;
            }
            builder.cipherSuites = colorStateList;
            builder.supportsTlsExtensions = true;
        } else {
            this.accessFlags = null;
        }
        applySupportBackgroundTint();
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        ConnectionSpec.Builder builder = (ConnectionSpec.Builder) this.layoutNodes;
        if (builder == null) {
            builder = new ConnectionSpec.Builder();
            this.layoutNodes = builder;
        }
        builder.cipherSuites = colorStateList;
        builder.supportsTlsExtensions = true;
        applySupportBackgroundTint();
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        ConnectionSpec.Builder builder = (ConnectionSpec.Builder) this.layoutNodes;
        if (builder == null) {
            builder = new ConnectionSpec.Builder();
            this.layoutNodes = builder;
        }
        builder.tlsVersions = mode;
        builder.tls = true;
        applySupportBackgroundTint();
    }

    public int skipWhitespaces() {
        char charAt;
        int i = this.size;
        if (i == -1) {
            return i;
        }
        String str = (String) this.newRulers;
        while (i < str.length() && ((charAt = str.charAt(i)) == ' ' || charAt == '\n' || charAt == '\r' || charAt == '\t')) {
            i++;
        }
        this.size = i;
        return i;
    }

    public void styleItem(TextView textView, ColorStateList colorStateList, ColorStateList colorStateList2) {
        ColorStateList colorStateList3 = (ColorStateList) this.values;
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable();
        MaterialShapeDrawable materialShapeDrawable2 = new MaterialShapeDrawable();
        ShapeAppearanceModel shapeAppearanceModel = (ShapeAppearanceModel) this.newRulers;
        materialShapeDrawable.setShapeAppearanceModel(shapeAppearanceModel);
        materialShapeDrawable2.setShapeAppearanceModel(shapeAppearanceModel);
        if (colorStateList == null) {
            colorStateList = (ColorStateList) this.accessFlags;
        }
        materialShapeDrawable.setFillColor(colorStateList);
        float f = this.size;
        ColorStateList colorStateList4 = (ColorStateList) this.layoutNodes;
        materialShapeDrawable.drawableState.strokeWidth = f;
        materialShapeDrawable.invalidateSelf();
        MaterialShapeDrawable.MaterialShapeDrawableState materialShapeDrawableState = materialShapeDrawable.drawableState;
        if (materialShapeDrawableState.strokeColor != colorStateList4) {
            materialShapeDrawableState.strokeColor = colorStateList4;
            materialShapeDrawable.onStateChange(materialShapeDrawable.getState());
        }
        if (colorStateList2 == null) {
            colorStateList2 = colorStateList3;
        }
        textView.setTextColor(colorStateList2);
        RippleDrawable rippleDrawable = new RippleDrawable(colorStateList3.withAlpha(30), materialShapeDrawable, materialShapeDrawable2);
        Rect rect = (Rect) this.rulers;
        textView.setBackground(new InsetDrawable((Drawable) rippleDrawable, rect.left, rect.top, rect.right, rect.bottom));
    }

    public String toString() {
        switch (this.$r8$classId) {
            case 5:
                StringBuilder sb = new StringBuilder("JsonReader(source='");
                sb.append(this.newRulers);
                sb.append("', currentPosition=");
                return Animation.CC.m(sb, this.size, ')');
            default:
                return super.toString();
        }
    }

    public boolean tryConsumeComma() {
        int skipWhitespaces = skipWhitespaces();
        String str = (String) this.newRulers;
        if (skipWhitespaces >= str.length() || skipWhitespaces == -1 || str.charAt(skipWhitespaces) != ',') {
            return false;
        }
        this.size++;
        return true;
    }

    public boolean tryConsumeNull(boolean z) {
        int prefetchOrEof = prefetchOrEof(skipWhitespaces());
        String str = (String) this.newRulers;
        int length = str.length() - prefetchOrEof;
        if (length >= 4 && prefetchOrEof != -1) {
            int i = 0;
            while (true) {
                if (i < 4) {
                    if ("null".charAt(i) != str.charAt(prefetchOrEof + i)) {
                        break;
                    }
                    i++;
                } else if (length <= 4 || WriteModeKt.charToTokenClass(str.charAt(prefetchOrEof + 4)) != 0) {
                    if (z) {
                        this.size = prefetchOrEof + 4;
                    }
                    return true;
                }
            }
        }
        return false;
    }

    public void unexpectedToken(char c) {
        String str = (String) this.newRulers;
        int i = this.size;
        if (i > 0 && c == '\"') {
            try {
                this.size = i - 1;
                String consumeStringLenient = consumeStringLenient();
                this.size = i;
                if (Intrinsics.areEqual(consumeStringLenient, "null")) {
                    fail(this.size - 1, "Expected string literal but 'null' literal was found", "Use 'coerceInputValues = true' in 'Json {}' builder to coerce nulls if property has a default value.");
                    throw null;
                }
            } catch (Throwable th) {
                this.size = i;
                throw th;
            }
        }
        String str2 = WriteModeKt.tokenDescription(WriteModeKt.charToTokenClass(c));
        int i2 = this.size;
        int i3 = i2 > 0 ? i2 - 1 : i2;
        fail$default(this, Modifier.CC.m("Expected ", str2, ", but had '", (i2 == str.length() || i3 < 0) ? "EOF" : String.valueOf(str.charAt(i3)), "' instead"), i3, null, 4);
        throw null;
    }

    public int updatePositionWithPostponed(int i, int i2) {
        int i3;
        int i4;
        Pools$SimplePool pools$SimplePool = (Pools$SimplePool) this.rulers;
        ArrayList arrayList = (ArrayList) this.accessFlags;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            AdapterHelper$UpdateOp adapterHelper$UpdateOp = (AdapterHelper$UpdateOp) arrayList.get(size);
            int i5 = adapterHelper$UpdateOp.cmd;
            int i6 = adapterHelper$UpdateOp.positionStart;
            if (i5 == 8) {
                int i7 = adapterHelper$UpdateOp.itemCount;
                if (i6 < i7) {
                    i4 = i7;
                    i3 = i6;
                } else {
                    i3 = i7;
                    i4 = i6;
                }
                if (i < i3 || i > i4) {
                    if (i < i6) {
                        if (i2 == 1) {
                            adapterHelper$UpdateOp.positionStart = i6 + 1;
                            adapterHelper$UpdateOp.itemCount = i7 + 1;
                        } else if (i2 == 2) {
                            adapterHelper$UpdateOp.positionStart = i6 - 1;
                            adapterHelper$UpdateOp.itemCount = i7 - 1;
                        }
                    }
                } else if (i3 == i6) {
                    if (i2 == 1) {
                        adapterHelper$UpdateOp.itemCount = i7 + 1;
                    } else if (i2 == 2) {
                        adapterHelper$UpdateOp.itemCount = i7 - 1;
                    }
                    i++;
                } else {
                    if (i2 == 1) {
                        adapterHelper$UpdateOp.positionStart = i6 + 1;
                    } else if (i2 == 2) {
                        adapterHelper$UpdateOp.positionStart = i6 - 1;
                    }
                    i--;
                }
            } else if (i6 <= i) {
                if (i5 == 1) {
                    i -= adapterHelper$UpdateOp.itemCount;
                } else if (i5 == 2) {
                    i += adapterHelper$UpdateOp.itemCount;
                }
            } else if (i2 == 1) {
                adapterHelper$UpdateOp.positionStart = i6 + 1;
            } else if (i2 == 2) {
                adapterHelper$UpdateOp.positionStart = i6 - 1;
            }
        }
        for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
            AdapterHelper$UpdateOp adapterHelper$UpdateOp2 = (AdapterHelper$UpdateOp) arrayList.get(size2);
            int i8 = adapterHelper$UpdateOp2.cmd;
            int i9 = adapterHelper$UpdateOp2.itemCount;
            if (i8 == 8) {
                if (i9 == adapterHelper$UpdateOp2.positionStart || i9 < 0) {
                    arrayList.remove(size2);
                    adapterHelper$UpdateOp2.payload = null;
                    pools$SimplePool.mo741release((Object) adapterHelper$UpdateOp2);
                }
            } else if (i9 <= 0) {
                arrayList.remove(size2);
                adapterHelper$UpdateOp2.payload = null;
                pools$SimplePool.mo741release((Object) adapterHelper$UpdateOp2);
            }
        }
        return i;
    }

    public RulerTrackingMap(View view) {
        this.$r8$classId = 1;
        this.size = -1;
        this.rulers = view;
        this.values = AppCompatDrawableManager.get();
    }

    public RulerTrackingMap(ColorStateList colorStateList, ColorStateList colorStateList2, ColorStateList colorStateList3, int i, ShapeAppearanceModel shapeAppearanceModel, Rect rect) {
        this.$r8$classId = 4;
        Operation$State.checkArgumentNonnegative(rect.left);
        Operation$State.checkArgumentNonnegative(rect.top);
        Operation$State.checkArgumentNonnegative(rect.right);
        Operation$State.checkArgumentNonnegative(rect.bottom);
        this.rulers = rect;
        this.values = colorStateList2;
        this.accessFlags = colorStateList;
        this.layoutNodes = colorStateList3;
        this.size = i;
        this.newRulers = shapeAppearanceModel;
    }

    public RulerTrackingMap(NavDestination navDestination) {
        this.$r8$classId = 2;
        this.rulers = navDestination;
        this.values = new ArrayList();
        this.accessFlags = new LinkedHashMap();
    }

    public byte consumeNextToken() {
        String str = (String) this.newRulers;
        int i = this.size;
        while (i != -1 && i < str.length()) {
            int i2 = i + 1;
            char charAt = str.charAt(i);
            if (charAt != ' ' && charAt != '\n' && charAt != '\r' && charAt != '\t') {
                this.size = i2;
                return WriteModeKt.charToTokenClass(charAt);
            }
            i = i2;
        }
        this.size = str.length();
        return (byte) 10;
    }

    public RulerTrackingMap(AppCompatActivity appCompatActivity, PageTitle pageTitle, int i, Constants.InvokeSource invokeSource, Integer num, Long l) {
        this.$r8$classId = 6;
        this.rulers = appCompatActivity;
        this.values = pageTitle;
        this.size = i;
        this.accessFlags = invokeSource;
        this.layoutNodes = num;
        this.newRulers = l;
    }

    public RulerTrackingMap(String str, JsonConfiguration jsonConfiguration) {
        this.$r8$classId = 5;
        str.getClass();
        this.rulers = jsonConfiguration;
        this.values = new SharingConfig(jsonConfiguration);
        this.layoutNodes = new StringBuilder();
        this.newRulers = str;
    }

    public RulerTrackingMap() {
        this.$r8$classId = 0;
        this.rulers = new VerticalRuler[32];
        this.values = new float[32];
        this.accessFlags = new byte[32];
        MutableScatterSet mutableScatterSet = ScatterSetKt.EmptyScatterSet;
        this.layoutNodes = new MutableScatterSet();
        this.newRulers = new MutableScatterSet();
    }

    public byte consumeNextToken(byte b) {
        String str = (String) this.newRulers;
        byte consumeNextToken = consumeNextToken();
        if (consumeNextToken == b) {
            return consumeNextToken;
        }
        String str2 = WriteModeKt.tokenDescription(b);
        int i = this.size;
        int i2 = i > 0 ? i - 1 : i;
        fail$default(this, Modifier.CC.m("Expected ", str2, ", but had '", (i == str.length() || i2 < 0) ? "EOF" : String.valueOf(str.charAt(i2)), "' instead"), i2, null, 4);
        throw null;
    }
}
