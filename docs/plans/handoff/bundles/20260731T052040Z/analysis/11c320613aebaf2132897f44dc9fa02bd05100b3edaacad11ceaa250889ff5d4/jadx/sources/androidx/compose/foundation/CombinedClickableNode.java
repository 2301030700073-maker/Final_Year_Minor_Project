package androidx.compose.foundation;

import android.view.KeyEvent;
import androidx.collection.LongObjectMapKt;
import androidx.collection.MutableLongObjectMap;
import androidx.compose.foundation.gestures.ScrollableKt;
import androidx.compose.foundation.gestures.TapGestureDetectorKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.indirect.IndirectPointerInputChange;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import com.grack.nanojson.JsonParser;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.functions.Function0;
import kotlin.text.CharsKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.StandaloneCoroutine;
import net.newpipe.app.AppKt;

/* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
/* loaded from: classes.dex */
public final class CombinedClickableNode extends AbstractClickableNode {
    public final MutableLongObjectMap doubleKeyClickStates;
    public PointerInputChange downEvent;
    public long firstTapUpTime;
    public boolean ignoreNextUp;
    public IndirectPointerInputChange indirectDownEvent;
    public long indirectFirstTapUpTime;
    public boolean indirectIgnoreNextUp;
    public boolean indirectIsSecondTap;
    public StandaloneCoroutine indirectLongPressJob;
    public boolean indirectLongPressTriggered;
    public StandaloneCoroutine indirectTapJob;
    public boolean isSecondTap;
    public final MutableLongObjectMap longKeyPressJobs;
    public StandaloneCoroutine longPressJob;
    public boolean longPressTriggered;
    public StandaloneCoroutine tapJob;

    /* compiled from: r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7 */
    public abstract class DoubleKeyClickState {
    }

    public CombinedClickableNode(Function0 function0, MutableInteractionSource mutableInteractionSource, IndicationNodeFactory indicationNodeFactory, boolean z) {
        super(indicationNodeFactory, mutableInteractionSource, null, function0, false, z);
        int i = LongObjectMapKt.$r8$clinit;
        this.longKeyPressJobs = new MutableLongObjectMap(6);
        this.doubleKeyClickStates = new MutableLongObjectMap(6);
        this.firstTapUpTime = -1L;
        this.indirectFirstTapUpTime = -1L;
    }

    public final void cancelInput$1(boolean z) {
        if (z) {
            this.indirectDownEvent = null;
            StandaloneCoroutine standaloneCoroutine = this.indirectLongPressJob;
            if (standaloneCoroutine != null) {
                standaloneCoroutine.cancel(null);
            }
            this.indirectLongPressJob = null;
            StandaloneCoroutine standaloneCoroutine2 = this.indirectTapJob;
            if (standaloneCoroutine2 != null) {
                standaloneCoroutine2.cancel(null);
            }
            this.indirectTapJob = null;
            this.indirectIsSecondTap = false;
            this.indirectLongPressTriggered = false;
            this.indirectFirstTapUpTime = -1L;
            this.indirectIgnoreNextUp = false;
        } else {
            this.downEvent = null;
            StandaloneCoroutine standaloneCoroutine3 = this.longPressJob;
            if (standaloneCoroutine3 != null) {
                standaloneCoroutine3.cancel(null);
            }
            this.longPressJob = null;
            StandaloneCoroutine standaloneCoroutine4 = this.tapJob;
            if (standaloneCoroutine4 != null) {
                standaloneCoroutine4.cancel(null);
            }
            this.tapJob = null;
            this.isSecondTap = false;
            this.longPressTriggered = false;
            this.firstTapUpTime = -1L;
            this.ignoreNextUp = false;
        }
        handlePressInteractionCancel(z);
    }

    public final void handleUpEvent(long j, IndirectPointerInputChange indirectPointerInputChange) {
        if (this.enabled && !this.indirectIgnoreNextUp) {
            m13handlePressInteractionRelease3MmeM6k(indirectPointerInputChange.position, true);
            this.indirectFirstTapUpTime = j;
            if (!this.indirectLongPressTriggered && !this.indirectIsSecondTap) {
                this.onClick.invoke();
            }
        }
        this.indirectDownEvent = null;
        this.indirectIgnoreNextUp = false;
        this.indirectIsSecondTap = false;
        StandaloneCoroutine standaloneCoroutine = this.indirectLongPressJob;
        if (standaloneCoroutine != null) {
            standaloneCoroutine.cancel(null);
        }
        this.indirectLongPressJob = null;
        this.indirectLongPressTriggered = false;
    }

    @Override // androidx.compose.ui.input.indirect.IndirectPointerInputModifierNode
    public final void onCancelIndirectPointerInput() {
        cancelInput$1(true);
    }

    @Override // androidx.compose.foundation.AbstractClickableNode
    public final void onCancelKeyInput() {
        resetKeyPressState();
    }

    @Override // androidx.compose.foundation.AbstractClickableNode, androidx.compose.ui.node.PointerInputModifierNode
    public final void onCancelPointerInput() {
        super.onCancelPointerInput();
        cancelInput$1(false);
    }

    @Override // androidx.compose.foundation.AbstractClickableNode
    /* renamed from: onClickKeyDownEvent-ZmokQxo */
    public final boolean mo14onClickKeyDownEventZmokQxo(KeyEvent keyEvent) {
        return false;
    }

    @Override // androidx.compose.foundation.AbstractClickableNode
    /* renamed from: onClickKeyUpEvent-ZmokQxo */
    public final void mo15onClickKeyUpEventZmokQxo(KeyEvent keyEvent) {
        long m671getKeyZmokQxo = CharsKt.m671getKeyZmokQxo(keyEvent);
        MutableLongObjectMap mutableLongObjectMap = this.longKeyPressJobs;
        boolean z = false;
        if (mutableLongObjectMap.get(m671getKeyZmokQxo) != null) {
            Job job = (Job) mutableLongObjectMap.get(m671getKeyZmokQxo);
            if (job != null) {
                if (job.isActive()) {
                    job.cancel(null);
                } else {
                    z = true;
                }
            }
            mutableLongObjectMap.remove(m671getKeyZmokQxo);
        }
        if (z) {
            return;
        }
        this.onClick.invoke();
    }

    @Override // androidx.compose.ui.input.indirect.IndirectPointerInputModifierNode
    public final void onIndirectPointerEvent(JsonParser jsonParser, PointerEventPass pointerEventPass) {
        ArrayList arrayList = (ArrayList) jsonParser.value;
        initializeIndicationAndInteractionSourceIfNeeded();
        if (this.enabled && this.gestureNode == null) {
            GestureNode gestureNode = new GestureNode(this);
            delegate(gestureNode);
            this.gestureNode = gestureNode;
        }
        int i = 0;
        if (pointerEventPass != PointerEventPass.Main) {
            if (pointerEventPass != PointerEventPass.Final || this.indirectDownEvent == null || this.indirectLongPressTriggered) {
                return;
            }
            int size = arrayList.size();
            while (i < size) {
                IndirectPointerInputChange indirectPointerInputChange = (IndirectPointerInputChange) arrayList.get(i);
                if (indirectPointerInputChange.isConsumed && indirectPointerInputChange != this.indirectDownEvent) {
                    cancelInput$1(true);
                    return;
                }
                i++;
            }
            return;
        }
        if (this.indirectDownEvent == null) {
            int size2 = arrayList.size();
            for (int i2 = 0; i2 < size2; i2++) {
                if (ScrollableKt.changedToDownIgnoreConsumed((IndirectPointerInputChange) arrayList.get(i2))) {
                    IndirectPointerInputChange indirectPointerInputChange2 = (IndirectPointerInputChange) arrayList.get(0);
                    indirectPointerInputChange2.isConsumed = true;
                    this.indirectDownEvent = indirectPointerInputChange2;
                    if (this.enabled) {
                        StandaloneCoroutine standaloneCoroutine = this.indirectTapJob;
                        if (standaloneCoroutine != null && standaloneCoroutine.isActive()) {
                            ((ViewConfiguration) HitTestResultKt.currentValueOf(this, CompositionLocalsKt.LocalViewConfiguration)).getClass();
                            if (indirectPointerInputChange2.uptimeMillis - this.indirectFirstTapUpTime < 40) {
                                this.indirectIgnoreNextUp = true;
                                return;
                            }
                            this.indirectIsSecondTap = true;
                            StandaloneCoroutine standaloneCoroutine2 = this.indirectTapJob;
                            if (standaloneCoroutine2 != null) {
                                standaloneCoroutine2.cancel(null);
                            }
                            this.indirectTapJob = null;
                        }
                        this.indirectLongPressTriggered = false;
                        handlePressInteractionStart(indirectPointerInputChange2);
                        return;
                    }
                    return;
                }
            }
            return;
        }
        if (this.indirectLongPressTriggered) {
            int size3 = arrayList.size();
            for (int i3 = 0; i3 < size3; i3++) {
                IndirectPointerInputChange indirectPointerInputChange3 = (IndirectPointerInputChange) arrayList.get(i3);
                if (!indirectPointerInputChange3.previousPressed || indirectPointerInputChange3.pressed) {
                    int size4 = arrayList.size();
                    while (i < size4) {
                        ((IndirectPointerInputChange) arrayList.get(i)).isConsumed = true;
                        i++;
                    }
                    return;
                }
            }
            IndirectPointerInputChange indirectPointerInputChange4 = (IndirectPointerInputChange) arrayList.get(0);
            indirectPointerInputChange4.isConsumed = true;
            long j = indirectPointerInputChange4.uptimeMillis;
            IndirectPointerInputChange indirectPointerInputChange5 = this.indirectDownEvent;
            indirectPointerInputChange5.getClass();
            handleUpEvent(j, indirectPointerInputChange5);
            return;
        }
        int size5 = arrayList.size();
        for (int i4 = 0; i4 < size5; i4++) {
            IndirectPointerInputChange indirectPointerInputChange6 = (IndirectPointerInputChange) arrayList.get(i4);
            if (indirectPointerInputChange6.isConsumed || !indirectPointerInputChange6.previousPressed || indirectPointerInputChange6.pressed) {
                float touchSlop = ((ViewConfiguration) HitTestResultKt.currentValueOf(this, CompositionLocalsKt.LocalViewConfiguration)).getTouchSlop();
                int size6 = arrayList.size();
                for (int i5 = 0; i5 < size6; i5++) {
                    IndirectPointerInputChange indirectPointerInputChange7 = (IndirectPointerInputChange) arrayList.get(i5);
                    long j2 = indirectPointerInputChange7.position;
                    IndirectPointerInputChange indirectPointerInputChange8 = this.indirectDownEvent;
                    indirectPointerInputChange8.getClass();
                    boolean z = Math.abs(Offset.m197getDistanceimpl(Offset.m199minusMKHz9U(j2, indirectPointerInputChange8.position))) > touchSlop;
                    if (indirectPointerInputChange7.isConsumed || z) {
                        cancelInput$1(true);
                        return;
                    }
                }
                return;
            }
        }
        IndirectPointerInputChange indirectPointerInputChange9 = (IndirectPointerInputChange) arrayList.get(0);
        indirectPointerInputChange9.isConsumed = true;
        long j3 = indirectPointerInputChange9.uptimeMillis;
        IndirectPointerInputChange indirectPointerInputChange10 = this.indirectDownEvent;
        indirectPointerInputChange10.getClass();
        handleUpEvent(j3, indirectPointerInputChange10);
    }

    @Override // androidx.compose.foundation.AbstractClickableNode, androidx.compose.ui.node.PointerInputModifierNode
    /* renamed from: onPointerEvent-H0pRuoY */
    public final void mo17onPointerEventH0pRuoY(PointerEvent pointerEvent, PointerEventPass pointerEventPass, long j) {
        super.mo17onPointerEventH0pRuoY(pointerEvent, pointerEventPass, j);
        if (pointerEventPass != PointerEventPass.Main) {
            if (pointerEventPass != PointerEventPass.Final || this.downEvent == null || this.longPressTriggered) {
                return;
            }
            List list = pointerEvent.changes;
            int size = list.size();
            for (int i = 0; i < size; i++) {
                PointerInputChange pointerInputChange = (PointerInputChange) list.get(i);
                if (pointerInputChange.isConsumed() && pointerInputChange != this.downEvent) {
                    cancelInput$1(false);
                    return;
                }
            }
            return;
        }
        if (this.downEvent == null) {
            if (TapGestureDetectorKt.isChangedToDown$default(pointerEvent, true)) {
                PointerInputChange pointerInputChange2 = (PointerInputChange) pointerEvent.changes.get(0);
                pointerInputChange2.consume();
                this.downEvent = pointerInputChange2;
                if (this.enabled) {
                    StandaloneCoroutine standaloneCoroutine = this.tapJob;
                    if (standaloneCoroutine != null && standaloneCoroutine.isActive()) {
                        ((ViewConfiguration) HitTestResultKt.currentValueOf(this, CompositionLocalsKt.LocalViewConfiguration)).getClass();
                        if (pointerInputChange2.uptimeMillis - this.firstTapUpTime < 40) {
                            this.ignoreNextUp = true;
                            return;
                        }
                        this.isSecondTap = true;
                        StandaloneCoroutine standaloneCoroutine2 = this.tapJob;
                        if (standaloneCoroutine2 != null) {
                            standaloneCoroutine2.cancel(null);
                        }
                        this.tapJob = null;
                    }
                    this.longPressTriggered = false;
                    handlePressInteractionStart(pointerInputChange2);
                    return;
                }
                return;
            }
            return;
        }
        int i2 = pointerEvent.classification;
        List list2 = pointerEvent.changes;
        if (this.longPressTriggered) {
            int size2 = list2.size();
            for (int i3 = 0; i3 < size2; i3++) {
                if (!AppKt.changedToUpIgnoreConsumed((PointerInputChange) list2.get(i3))) {
                    int size3 = list2.size();
                    for (int i4 = 0; i4 < size3; i4++) {
                        ((PointerInputChange) list2.get(i4)).consume();
                    }
                    return;
                }
            }
            PointerInputChange pointerInputChange3 = (PointerInputChange) list2.get(0);
            pointerInputChange3.consume();
            long j2 = pointerInputChange3.uptimeMillis;
            PointerInputChange pointerInputChange4 = this.downEvent;
            pointerInputChange4.getClass();
            handleUpEvent(j2, pointerInputChange4);
            return;
        }
        int size4 = list2.size();
        for (int i5 = 0; i5 < size4; i5++) {
            if (!AppKt.changedToUp((PointerInputChange) list2.get(i5))) {
                long m11getExtendedTouchPaddinghWWAJMo = m11getExtendedTouchPaddinghWWAJMo(j);
                int size5 = list2.size();
                for (int i6 = 0; i6 < size5; i6++) {
                    PointerInputChange pointerInputChange5 = (PointerInputChange) list2.get(i6);
                    if (pointerInputChange5.isConsumed() || AppKt.m701isOutOfBoundsjwHxaWs(pointerInputChange5, j, m11getExtendedTouchPaddinghWWAJMo)) {
                        cancelInput$1(false);
                        return;
                    }
                }
                return;
            }
        }
        PointerInputChange pointerInputChange6 = (PointerInputChange) list2.get(0);
        pointerInputChange6.consume();
        long j3 = pointerInputChange6.uptimeMillis;
        PointerInputChange pointerInputChange7 = this.downEvent;
        pointerInputChange7.getClass();
        handleUpEvent(j3, pointerInputChange7);
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void onReset() {
        resetKeyPressState();
    }

    public final void resetKeyPressState() {
        char c;
        long j;
        long j2;
        char c2;
        MutableLongObjectMap mutableLongObjectMap = this.longKeyPressJobs;
        Object[] objArr = mutableLongObjectMap.values;
        long[] jArr = mutableLongObjectMap.metadata;
        int length = jArr.length - 2;
        char c3 = 7;
        if (length >= 0) {
            int i = 0;
            j = 128;
            while (true) {
                long j3 = jArr[i];
                j2 = 255;
                if ((((~j3) << c3) & j3 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i2 = 8 - ((~(i - length)) >>> 31);
                    int i3 = 0;
                    while (i3 < i2) {
                        if ((j3 & 255) < 128) {
                            c2 = c3;
                            ((Job) objArr[(i << 3) + i3]).cancel(null);
                        } else {
                            c2 = c3;
                        }
                        j3 >>= 8;
                        i3++;
                        c3 = c2;
                    }
                    c = c3;
                    if (i2 != 8) {
                        break;
                    }
                } else {
                    c = c3;
                }
                if (i == length) {
                    break;
                }
                i++;
                c3 = c;
            }
        } else {
            c = 7;
            j = 128;
            j2 = 255;
        }
        mutableLongObjectMap.clear();
        MutableLongObjectMap mutableLongObjectMap2 = this.doubleKeyClickStates;
        Object[] objArr2 = mutableLongObjectMap2.values;
        long[] jArr2 = mutableLongObjectMap2.metadata;
        int length2 = jArr2.length - 2;
        if (length2 >= 0) {
            int i4 = 0;
            while (true) {
                long j4 = jArr2[i4];
                if ((((~j4) << c) & j4 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i5 = 8 - ((~(i4 - length2)) >>> 31);
                    for (int i6 = 0; i6 < i5; i6++) {
                        if ((j4 & j2) < j) {
                            ((DoubleKeyClickState) objArr2[(i4 << 3) + i6]).getClass();
                            throw null;
                        }
                        j4 >>= 8;
                    }
                    if (i5 != 8) {
                        break;
                    }
                }
                if (i4 == length2) {
                    break;
                } else {
                    i4++;
                }
            }
        }
        mutableLongObjectMap2.clear();
    }

    @Override // androidx.compose.foundation.AbstractClickableNode
    public final void applyAdditionalSemantics(SemanticsPropertyReceiver semanticsPropertyReceiver) {
    }

    public final void handleUpEvent(long j, PointerInputChange pointerInputChange) {
        if (this.enabled && !this.ignoreNextUp) {
            m13handlePressInteractionRelease3MmeM6k(pointerInputChange.position, false);
            this.firstTapUpTime = j;
            if (!this.longPressTriggered && !this.isSecondTap) {
                this.onClick.invoke();
            }
        }
        this.downEvent = null;
        this.ignoreNextUp = false;
        this.isSecondTap = false;
        StandaloneCoroutine standaloneCoroutine = this.longPressJob;
        if (standaloneCoroutine != null) {
            standaloneCoroutine.cancel(null);
        }
        this.longPressJob = null;
        this.longPressTriggered = false;
    }
}
