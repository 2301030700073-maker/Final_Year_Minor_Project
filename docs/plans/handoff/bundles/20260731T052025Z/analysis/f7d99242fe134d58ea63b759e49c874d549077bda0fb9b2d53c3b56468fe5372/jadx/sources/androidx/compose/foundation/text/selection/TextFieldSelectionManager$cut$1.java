package androidx.compose.foundation.text.selection;

import android.content.ClipData;
import android.os.Parcel;
import android.text.Annotation;
import android.text.Spanned;
import android.util.Base64;
import androidx.appcompat.app.ActionBar;
import androidx.compose.foundation.internal.ClipboardUtils_androidKt;
import androidx.compose.foundation.internal.DecodeHelper;
import androidx.compose.foundation.text.HandleState;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.platform.AndroidClipboard;
import androidx.compose.ui.platform.ClipEntry;
import androidx.compose.ui.platform.Clipboard;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.AnnotatedStringKt;
import androidx.compose.ui.text.ParagraphKt;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.font.SystemFontFamily;
import androidx.compose.ui.text.input.PasswordVisualTransformation;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.TextUnit;
import java.util.ArrayList;
import java.util.List;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.JobKt;
import okhttp3.internal._UtilJvmKt$$ExternalSyntheticLambda0;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public final class TextFieldSelectionManager$cut$1 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int $r8$classId;
    public int label;
    public final /* synthetic */ TextFieldSelectionManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ TextFieldSelectionManager$cut$1(TextFieldSelectionManager textFieldSelectionManager, Continuation continuation, int i) {
        super(2, continuation);
        this.$r8$classId = i;
        this.this$0 = textFieldSelectionManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        int i = this.$r8$classId;
        TextFieldSelectionManager textFieldSelectionManager = this.this$0;
        switch (i) {
            case 0:
                return new TextFieldSelectionManager$cut$1(textFieldSelectionManager, continuation, 0);
            case 1:
                TextFieldSelectionManager$cut$1 textFieldSelectionManager$cut$1 = new TextFieldSelectionManager$cut$1(textFieldSelectionManager, continuation, 1);
                long j = ((Offset) obj).packedValue;
                return textFieldSelectionManager$cut$1;
            default:
                return new TextFieldSelectionManager$cut$1(textFieldSelectionManager, continuation, 2);
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        switch (i) {
            case 0:
                return ((TextFieldSelectionManager$cut$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
            case 1:
                long j = ((Offset) obj).packedValue;
                return new TextFieldSelectionManager$cut$1(this.this$0, (Continuation) obj2, 1).invokeSuspend(unit);
            default:
                return ((TextFieldSelectionManager$cut$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(unit);
        }
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i;
        AnnotatedString annotatedString;
        Clipboard clipboard;
        Object clipEntry;
        Object obj2;
        CharSequence text;
        CharSequence charSequence;
        int i2;
        Parcel parcel;
        int i3;
        AnnotatedString annotatedString2;
        int i4 = this.$r8$classId;
        HandleState handleState = HandleState.None;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        TextFieldSelectionManager textFieldSelectionManager = this.this$0;
        Unit unit = Unit.INSTANCE;
        switch (i4) {
            case 0:
                int i5 = this.label;
                if (i5 == 0) {
                    ResultKt.throwOnFailure(obj);
                    if (TextRange.m699getCollapsedimpl(textFieldSelectionManager.getValue$foundation().selection) || !textFieldSelectionManager.getEditable() || (textFieldSelectionManager.visualTransformation instanceof PasswordVisualTransformation)) {
                        i = 1;
                        annotatedString = null;
                    } else {
                        annotatedString = ActionBar.getSelectedText(textFieldSelectionManager.getValue$foundation());
                        AnnotatedString textBeforeSelection = ActionBar.getTextBeforeSelection(textFieldSelectionManager.getValue$foundation(), textFieldSelectionManager.getValue$foundation().annotatedString.text.length());
                        AnnotatedString textAfterSelection = ActionBar.getTextAfterSelection(textFieldSelectionManager.getValue$foundation(), textFieldSelectionManager.getValue$foundation().annotatedString.text.length());
                        AnnotatedString.Builder builder = new AnnotatedString.Builder(textBeforeSelection);
                        builder.append(textAfterSelection);
                        AnnotatedString annotatedString3 = builder.toAnnotatedString();
                        int m702getMinimpl = TextRange.m702getMinimpl(textFieldSelectionManager.getValue$foundation().selection);
                        textFieldSelectionManager.onValueChange.invoke(TextFieldSelectionManager.m309createTextFieldValueFDrldGo(annotatedString3, ParagraphKt.TextRange(m702getMinimpl, m702getMinimpl)));
                        textFieldSelectionManager.setHandleState(handleState);
                        i = 1;
                        textFieldSelectionManager.undoManager.forceNextSnapshot = true;
                    }
                    if (annotatedString != null && (clipboard = textFieldSelectionManager.clipboard) != null) {
                        ClipEntry clipEntry2 = ClipboardUtils_androidKt.toClipEntry(annotatedString);
                        this.label = i;
                        ((AndroidClipboard) clipboard).setClipEntry(clipEntry2);
                        if (unit == coroutineSingletons) {
                        }
                    }
                } else if (i5 != 1) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                    break;
                } else {
                    ResultKt.throwOnFailure(obj);
                }
                break;
            case 1:
                int i6 = this.label;
                if (i6 == 0) {
                    ResultKt.throwOnFailure(obj);
                    this.label = 1;
                    if (textFieldSelectionManager.updateClipboardEntry$foundation(this) == coroutineSingletons) {
                    }
                } else if (i6 == 1) {
                    ResultKt.throwOnFailure(obj);
                } else if (i6 != 2) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                    break;
                } else {
                    ResultKt.throwOnFailure(obj);
                    break;
                }
                Pair access$getContextTextAndSelection = TextFieldSelectionManager.access$getContextTextAndSelection(textFieldSelectionManager);
                if (access$getContextTextAndSelection != null) {
                    String str = (String) access$getContextTextAndSelection.first;
                    long j = ((TextRange) access$getContextTextAndSelection.second).packedValue;
                    PlatformSelectionBehaviors platformSelectionBehaviors = textFieldSelectionManager.platformSelectionBehaviors;
                    if (platformSelectionBehaviors != null) {
                        this.label = 2;
                        PlatformSelectionBehaviorsImpl platformSelectionBehaviorsImpl = (PlatformSelectionBehaviorsImpl) platformSelectionBehaviors;
                        Object withContext = (str.length() == 0 || TextRange.m699getCollapsedimpl(j)) ? unit : JobKt.withContext(platformSelectionBehaviorsImpl.coroutineContext, new PlatformSelectionBehaviorsImpl$requireTextClassificationSession$2(platformSelectionBehaviorsImpl, new PlatformSelectionBehaviorsImpl$onShowContextMenuOrSelectionToolbar$2(j, platformSelectionBehaviorsImpl, str, null), null), this);
                        if (withContext != coroutineSingletons) {
                            withContext = unit;
                        }
                        if (withContext == coroutineSingletons) {
                        }
                    }
                }
                break;
            default:
                int i7 = this.label;
                if (i7 == 0) {
                    ResultKt.throwOnFailure(obj);
                    Clipboard clipboard2 = textFieldSelectionManager.clipboard;
                    if (clipboard2 != null) {
                        this.label = 1;
                        ClipData primaryClip = ((AndroidClipboard) clipboard2).androidClipboardManager.getClipboardManager().getPrimaryClip();
                        clipEntry = primaryClip != null ? new ClipEntry(primaryClip) : null;
                        if (clipEntry == coroutineSingletons) {
                        }
                    }
                } else if (i7 == 1) {
                    ResultKt.throwOnFailure(obj);
                    clipEntry = obj;
                } else if (i7 != 2) {
                    _UtilJvmKt$$ExternalSyntheticLambda0.m$2("call to 'resume' before 'invoke' with coroutine");
                    break;
                } else {
                    ResultKt.throwOnFailure(obj);
                    obj2 = obj;
                    annotatedString2 = (AnnotatedString) obj2;
                    if (annotatedString2 != null && textFieldSelectionManager.getEditable()) {
                        AnnotatedString.Builder builder2 = new AnnotatedString.Builder(ActionBar.getTextBeforeSelection(textFieldSelectionManager.getValue$foundation(), textFieldSelectionManager.getValue$foundation().annotatedString.text.length()));
                        builder2.append(annotatedString2);
                        AnnotatedString annotatedString4 = builder2.toAnnotatedString();
                        AnnotatedString textAfterSelection2 = ActionBar.getTextAfterSelection(textFieldSelectionManager.getValue$foundation(), textFieldSelectionManager.getValue$foundation().annotatedString.text.length());
                        AnnotatedString.Builder builder3 = new AnnotatedString.Builder(annotatedString4);
                        builder3.append(textAfterSelection2);
                        AnnotatedString annotatedString5 = builder3.toAnnotatedString();
                        int length = annotatedString2.text.length() + TextRange.m702getMinimpl(textFieldSelectionManager.getValue$foundation().selection);
                        textFieldSelectionManager.onValueChange.invoke(TextFieldSelectionManager.m309createTextFieldValueFDrldGo(annotatedString5, ParagraphKt.TextRange(length, length)));
                        textFieldSelectionManager.setHandleState(handleState);
                        textFieldSelectionManager.undoManager.forceNextSnapshot = true;
                    }
                    break;
                }
                ClipEntry clipEntry3 = (ClipEntry) clipEntry;
                if (clipEntry3 != null) {
                    this.label = 2;
                    int i8 = 0;
                    ClipData.Item itemAt = clipEntry3.clipData.getItemAt(0);
                    if (itemAt == null || (text = itemAt.getText()) == null) {
                        obj2 = null;
                    } else if (text instanceof Spanned) {
                        Spanned spanned = (Spanned) text;
                        Annotation[] annotationArr = (Annotation[]) spanned.getSpans(0, spanned.length(), Annotation.class);
                        ArrayList arrayList = new ArrayList();
                        annotationArr.getClass();
                        int length2 = annotationArr.length - 1;
                        if (length2 >= 0) {
                            int i9 = 0;
                            while (true) {
                                Annotation annotation = annotationArr[i9];
                                if (Intrinsics.areEqual(annotation.getKey(), "androidx.compose.text.SpanStyle")) {
                                    int spanStart = spanned.getSpanStart(annotation);
                                    int spanEnd = spanned.getSpanEnd(annotation);
                                    String value = annotation.getValue();
                                    DecodeHelper decodeHelper = new DecodeHelper();
                                    Parcel obtain = Parcel.obtain();
                                    decodeHelper.parcel = obtain;
                                    byte[] decode = Base64.decode(value, i8);
                                    charSequence = text;
                                    obtain.unmarshall(decode, i8, decode.length);
                                    obtain.setDataPosition(i8);
                                    Parcel parcel2 = decodeHelper.parcel;
                                    long j2 = Color.Unspecified;
                                    long j3 = j2;
                                    long j4 = TextUnit.Unspecified;
                                    long j5 = j4;
                                    FontWeight fontWeight = null;
                                    FontStyle fontStyle = null;
                                    FontSynthesis fontSynthesis = null;
                                    String str2 = null;
                                    BaselineShift baselineShift = null;
                                    TextGeometricTransform textGeometricTransform = null;
                                    TextDecoration textDecoration = null;
                                    Shadow shadow = null;
                                    while (true) {
                                        if (parcel2.dataAvail() > 1) {
                                            byte readByte = parcel2.readByte();
                                            i2 = i8;
                                            if (readByte == 1) {
                                                if (parcel2.dataAvail() >= 8) {
                                                    j2 = decodeHelper.m197decodeColor0d7_KjU();
                                                    i8 = i2;
                                                }
                                            } else if (readByte == 2) {
                                                if (parcel2.dataAvail() >= 5) {
                                                    j4 = decodeHelper.m198decodeTextUnitXSAIIZE();
                                                    i8 = i2;
                                                }
                                            } else if (readByte == 3) {
                                                if (parcel2.dataAvail() >= 4) {
                                                    fontWeight = new FontWeight(parcel2.readInt());
                                                    i8 = i2;
                                                }
                                            } else if (readByte == 4) {
                                                if (parcel2.dataAvail() >= 1) {
                                                    byte readByte2 = parcel2.readByte();
                                                    FontStyle fontStyle2 = new FontStyle((readByte2 != 0 && readByte2 == 1) ? 1 : i2);
                                                    i8 = i2;
                                                    fontStyle = fontStyle2;
                                                }
                                            } else if (readByte != 5) {
                                                if (readByte == 6) {
                                                    str2 = parcel2.readString();
                                                } else if (readByte == 7) {
                                                    if (parcel2.dataAvail() >= 5) {
                                                        j5 = decodeHelper.m198decodeTextUnitXSAIIZE();
                                                    }
                                                } else if (readByte == 8) {
                                                    if (parcel2.dataAvail() >= 4) {
                                                        i8 = i2;
                                                        baselineShift = new BaselineShift(parcel2.readFloat());
                                                    }
                                                } else if (readByte == 9) {
                                                    if (parcel2.dataAvail() >= 8) {
                                                        textGeometricTransform = new TextGeometricTransform(parcel2.readFloat(), parcel2.readFloat());
                                                    }
                                                } else if (readByte == 10) {
                                                    if (parcel2.dataAvail() >= 8) {
                                                        j3 = decodeHelper.m197decodeColor0d7_KjU();
                                                    }
                                                } else if (readByte != 11) {
                                                    parcel = parcel2;
                                                    if (readByte != 12) {
                                                        i8 = i2;
                                                        parcel2 = parcel;
                                                    } else if (parcel.dataAvail() >= 20) {
                                                        i8 = i2;
                                                        parcel2 = parcel;
                                                        shadow = new Shadow(decodeHelper.m197decodeColor0d7_KjU(), (Float.floatToRawIntBits(parcel.readFloat()) << 32) | (Float.floatToRawIntBits(parcel.readFloat()) & 4294967295L), parcel.readFloat());
                                                    }
                                                } else if (parcel2.dataAvail() >= 4) {
                                                    int readInt = parcel2.readInt();
                                                    int i10 = (readInt & 2) != 0 ? 1 : i2;
                                                    int i11 = (readInt & 1) != 0 ? 1 : i2;
                                                    TextDecoration textDecoration2 = TextDecoration.LineThrough;
                                                    TextDecoration textDecoration3 = TextDecoration.Underline;
                                                    if (i10 == 0 || i11 == 0) {
                                                        parcel = parcel2;
                                                        textDecoration = i10 != 0 ? textDecoration2 : i11 != 0 ? textDecoration3 : TextDecoration.None;
                                                    } else {
                                                        parcel = parcel2;
                                                        TextDecoration[] textDecorationArr = new TextDecoration[2];
                                                        textDecorationArr[i2] = textDecoration2;
                                                        textDecorationArr[1] = textDecoration3;
                                                        List listOf = IntOffsetKt.listOf((Object[]) textDecorationArr);
                                                        Integer valueOf = Integer.valueOf(i2);
                                                        int size = listOf.size();
                                                        int i12 = i2;
                                                        while (i12 < size) {
                                                            valueOf = Integer.valueOf(((TextDecoration) listOf.get(i12)).mask | valueOf.intValue());
                                                            i12++;
                                                            listOf = listOf;
                                                        }
                                                        textDecoration = new TextDecoration(valueOf.intValue());
                                                    }
                                                    i8 = i2;
                                                    parcel2 = parcel;
                                                }
                                                i8 = i2;
                                            } else if (parcel2.dataAvail() >= 1) {
                                                byte readByte3 = parcel2.readByte();
                                                if (readByte3 != 0) {
                                                    if (readByte3 == 1) {
                                                        i3 = 65535;
                                                    } else if (readByte3 == 3) {
                                                        i3 = 2;
                                                    } else if (readByte3 == 2) {
                                                        i3 = 1;
                                                    }
                                                    FontSynthesis fontSynthesis2 = new FontSynthesis(i3);
                                                    i8 = i2;
                                                    fontSynthesis = fontSynthesis2;
                                                }
                                                i3 = i2;
                                                FontSynthesis fontSynthesis22 = new FontSynthesis(i3);
                                                i8 = i2;
                                                fontSynthesis = fontSynthesis22;
                                            }
                                        } else {
                                            i2 = i8;
                                        }
                                    }
                                    arrayList.add(new AnnotatedString.Range(spanStart, spanEnd, new SpanStyle(j2, j4, fontWeight, fontStyle, fontSynthesis, (SystemFontFamily) null, str2, j5, baselineShift, textGeometricTransform, (LocaleList) null, j3, textDecoration, shadow, 49152)));
                                } else {
                                    charSequence = text;
                                    i2 = i8;
                                }
                                if (i9 != length2) {
                                    i9++;
                                    text = charSequence;
                                    i8 = i2;
                                }
                            }
                        } else {
                            charSequence = text;
                        }
                        String obj3 = charSequence.toString();
                        AnnotatedString annotatedString6 = AnnotatedStringKt.EmptyAnnotatedString;
                        obj2 = new AnnotatedString(arrayList.isEmpty() ? null : arrayList, obj3);
                    } else {
                        obj2 = new AnnotatedString(text.toString());
                    }
                    if (obj2 == coroutineSingletons) {
                    }
                    annotatedString2 = (AnnotatedString) obj2;
                    if (annotatedString2 != null) {
                        AnnotatedString.Builder builder22 = new AnnotatedString.Builder(ActionBar.getTextBeforeSelection(textFieldSelectionManager.getValue$foundation(), textFieldSelectionManager.getValue$foundation().annotatedString.text.length()));
                        builder22.append(annotatedString2);
                        AnnotatedString annotatedString42 = builder22.toAnnotatedString();
                        AnnotatedString textAfterSelection22 = ActionBar.getTextAfterSelection(textFieldSelectionManager.getValue$foundation(), textFieldSelectionManager.getValue$foundation().annotatedString.text.length());
                        AnnotatedString.Builder builder32 = new AnnotatedString.Builder(annotatedString42);
                        builder32.append(textAfterSelection22);
                        AnnotatedString annotatedString52 = builder32.toAnnotatedString();
                        int length3 = annotatedString2.text.length() + TextRange.m702getMinimpl(textFieldSelectionManager.getValue$foundation().selection);
                        textFieldSelectionManager.onValueChange.invoke(TextFieldSelectionManager.m309createTextFieldValueFDrldGo(annotatedString52, ParagraphKt.TextRange(length3, length3)));
                        textFieldSelectionManager.setHandleState(handleState);
                        textFieldSelectionManager.undoManager.forceNextSnapshot = true;
                    }
                }
                break;
        }
        return unit;
    }
}
