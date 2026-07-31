package androidx.compose.ui.node;

import androidx.camera.camera2.pipe.CameraDevices$CC;
import androidx.collection.MutableScatterSet;
import androidx.collection.ScatterSetKt;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.ui.layout.VerticalRuler;
import androidx.core.util.Pools$SimplePool;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.AdapterHelper$UpdateOp;
import androidx.recyclerview.widget.RecyclerView;
import coil3.UriKt$$ExternalSyntheticBUOutline0;
import coil3.size.ViewSizeResolver;
import java.io.Serializable;
import java.util.ArrayList;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex$$ExternalSyntheticBUOutline0;
import kotlin.text.StringsKt;
import kotlinx.coroutines.flow.SharingConfig;
import kotlinx.serialization.json.JsonDecodingException;
import kotlinx.serialization.json.internal.CharMappings;
import kotlinx.serialization.json.internal.WriteModeKt;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public class RulerTrackingMap {
    public final /* synthetic */ int $r8$classId;
    public Serializable accessFlags;
    public final Object layoutNodes;
    public final Object newRulers;
    public Object rulers;
    public int size;
    public Object values;

    public RulerTrackingMap(RecyclerView.AnonymousClass4 anonymousClass4) {
        this.$r8$classId = 1;
        this.rulers = new Pools$SimplePool(30);
        this.values = new ArrayList();
        this.accessFlags = new ArrayList();
        this.size = 0;
        this.layoutNodes = anonymousClass4;
        this.newRulers = new Fragment.AnonymousClass7(this);
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

    public int appendHex(int i, CharSequence charSequence) {
        int i2 = i + 4;
        if (i2 < charSequence.length()) {
            ((StringBuilder) this.layoutNodes).append((char) (fromHexChar(i + 3, charSequence) + (fromHexChar(i, charSequence) << 12) + (fromHexChar(i + 1, charSequence) << 8) + (fromHexChar(i + 2, charSequence) << 4)));
            return i2;
        }
        this.size = i;
        if (i2 < charSequence.length()) {
            return appendHex(this.size, charSequence);
        }
        fail$default(this, "Unexpected EOF during unicode escape", 0, null, 6);
        throw null;
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

    public void consumeBooleanLiteral(String str, int i) {
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
            fail$default(this, CameraDevices$CC.m("Expected quotation mark '\"', but had '", (i2 == str2.length() || i2 < 0) ? "EOF" : String.valueOf(str2.charAt(i2)), "' instead"), i2, null, 4);
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
                            i5 = appendHex(i5, str2);
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
    
        coil3.UriKt$$ExternalSyntheticBUOutline0.m857m();
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
                RecyclerView recyclerView = RecyclerView.this;
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
            UriKt$$ExternalSyntheticBUOutline0.m("should not dispatch add or move for pre layout");
            return;
        }
        int updatePositionWithPostponed = updatePositionWithPostponed(adapterHelper$UpdateOp.positionStart, i2);
        int i3 = adapterHelper$UpdateOp.positionStart;
        int i4 = adapterHelper$UpdateOp.cmd;
        if (i4 == 2) {
            i = 0;
        } else {
            if (i4 != 4) {
                Regex$$ExternalSyntheticBUOutline0.m$2(adapterHelper$UpdateOp, "op should be remove or update.");
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
                pools$SimplePool.release(obtainUpdateOp);
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
        pools$SimplePool.release(adapterHelper$UpdateOp);
        if (i5 > 0) {
            AdapterHelper$UpdateOp obtainUpdateOp2 = obtainUpdateOp(obj, adapterHelper$UpdateOp.cmd, updatePositionWithPostponed, i5);
            dispatchFirstPassAndUpdateViewHolders(obtainUpdateOp2, i3);
            obtainUpdateOp2.payload = null;
            pools$SimplePool.release(obtainUpdateOp2);
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
                UriKt$$ExternalSyntheticBUOutline0.m("only remove and update ops can be dispatched in first pass");
                return;
            }
        }
        int i3 = adapterHelper$UpdateOp.itemCount;
        RecyclerView recyclerView = RecyclerView.this;
        recyclerView.offsetPositionRecordsForRemove(i, i3, true);
        recyclerView.mItemsAddedOrRemoved = true;
        recyclerView.mState.mDeletedInvisibleItemCountSincePreviousLayout += i3;
    }

    public void fail(int i, String str, String str2) {
        String path = ((SharingConfig) this.values).getPath();
        String str3 = (String) this.newRulers;
        str3.getClass();
        throw new JsonDecodingException(WriteModeKt.formatDecodingException(i, str, path, str2, ((ProvidedValue) this.rulers).canOverride ? WriteModeKt.minify(i, str3).toString() : null));
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

    public int fromHexChar(int i, CharSequence charSequence) {
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

    public boolean hasPendingUpdates() {
        return ((ArrayList) this.values).size() > 0;
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
            RecyclerView recyclerView = RecyclerView.this;
            recyclerView.offsetPositionRecordsForRemove(i2, i3, false);
            recyclerView.mItemsAddedOrRemoved = true;
            return;
        }
        if (i == 4) {
            anonymousClass4.markViewHoldersUpdated(adapterHelper$UpdateOp.positionStart, adapterHelper$UpdateOp.itemCount, adapterHelper$UpdateOp.payload);
        } else if (i == 8) {
            anonymousClass4.offsetPositionsForMove(adapterHelper$UpdateOp.positionStart, adapterHelper$UpdateOp.itemCount);
        } else {
            Regex$$ExternalSyntheticBUOutline0.m$2(adapterHelper$UpdateOp, "Unknown update op type for ");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:118:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x00b1 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0015 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:130:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0132 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0125 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void preProcess() {
        /*
            Method dump skipped, instructions count: 698
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
            ((Pools$SimplePool) this.rulers).release(adapterHelper$UpdateOp);
        }
        arrayList.clear();
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

    public String toString() {
        switch (this.$r8$classId) {
            case 2:
                StringBuilder sb = new StringBuilder("JsonReader(source='");
                sb.append(this.newRulers);
                sb.append("', currentPosition=");
                return CameraDevices$CC.m(sb, this.size, ')');
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
        fail$default(this, ViewSizeResolver.CC.m("Expected ", str2, ", but had '", (i2 == str.length() || i3 < 0) ? "EOF" : String.valueOf(str.charAt(i3)), "' instead"), i3, null, 4);
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
                    pools$SimplePool.release(adapterHelper$UpdateOp2);
                }
            } else if (i9 <= 0) {
                arrayList.remove(size2);
                adapterHelper$UpdateOp2.payload = null;
                pools$SimplePool.release(adapterHelper$UpdateOp2);
            }
        }
        return i;
    }

    public RulerTrackingMap(String str, ProvidedValue providedValue) {
        this.$r8$classId = 2;
        str.getClass();
        this.rulers = providedValue;
        this.values = new SharingConfig(providedValue);
        this.layoutNodes = new StringBuilder();
        this.newRulers = str;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [byte[], java.io.Serializable] */
    public RulerTrackingMap() {
        this.$r8$classId = 0;
        this.rulers = new VerticalRuler[32];
        this.values = new float[32];
        this.accessFlags = new byte[32];
        MutableScatterSet mutableScatterSet = ScatterSetKt.EmptyScatterSet;
        this.layoutNodes = new MutableScatterSet();
        this.newRulers = new MutableScatterSet();
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

    public byte consumeNextToken(byte b) {
        String str = (String) this.newRulers;
        byte consumeNextToken = consumeNextToken();
        if (consumeNextToken == b) {
            return consumeNextToken;
        }
        String str2 = WriteModeKt.tokenDescription(b);
        int i = this.size;
        int i2 = i > 0 ? i - 1 : i;
        fail$default(this, ViewSizeResolver.CC.m("Expected ", str2, ", but had '", (i == str.length() || i2 < 0) ? "EOF" : String.valueOf(str.charAt(i2)), "' instead"), i2, null, 4);
        throw null;
    }
}
