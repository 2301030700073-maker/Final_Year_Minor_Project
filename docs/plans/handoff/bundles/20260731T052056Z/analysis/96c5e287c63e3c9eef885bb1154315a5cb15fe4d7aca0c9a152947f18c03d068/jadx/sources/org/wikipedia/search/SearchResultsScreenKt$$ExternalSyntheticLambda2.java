package org.wikipedia.search;

import android.content.Context;
import android.view.View;
import androidx.compose.foundation.lazy.LazyItemScope$CC;
import androidx.compose.foundation.lazy.LazyListIntervalContent;
import androidx.compose.foundation.text.modifiers.TextAnnotatedStringNode;
import androidx.compose.foundation.text.selection.Selection;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntSize;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import org.wikipedia.compose.components.WikiTopAppBarWithSearchKt$$ExternalSyntheticLambda6;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public final /* synthetic */ class SearchResultsScreenKt$$ExternalSyntheticLambda2 implements Function1 {
    public final /* synthetic */ int $r8$classId;
    public final /* synthetic */ MutableState f$0;

    public /* synthetic */ SearchResultsScreenKt$$ExternalSyntheticLambda2(MutableState mutableState, int i) {
        this.$r8$classId = i;
        this.f$0 = mutableState;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i = this.$r8$classId;
        Unit unit = Unit.INSTANCE;
        MutableState mutableState = this.f$0;
        switch (i) {
            case 0:
                Context context = (Context) obj;
                context.getClass();
                View view = new View(context);
                mutableState.setValue(view);
                break;
            case 1:
                Float f = (Float) obj;
                f.getClass();
                break;
            case 2:
                TextAnnotatedStringNode.TextSubstitutionValue textSubstitutionValue = (TextAnnotatedStringNode.TextSubstitutionValue) obj;
                mutableState.setValue(textSubstitutionValue.isShowingSubstitution ? textSubstitutionValue.substitution : textSubstitutionValue.original);
                break;
            case 3:
                List list = (List) obj;
                if (mutableState != null) {
                    mutableState.setValue(list);
                    break;
                }
                break;
            case 4:
                ((Function1) mutableState.getValue()).invoke((Offset) obj);
                break;
            case 5:
                mutableState.setValue((LayoutCoordinates) obj);
                break;
            case 6:
                mutableState.setValue((LayoutCoordinates) obj);
                break;
            case 7:
                mutableState.setValue((LayoutCoordinates) obj);
                break;
            case 8:
                mutableState.setValue((Selection) obj);
                break;
            case 9:
                mutableState.setValue((LayoutCoordinates) obj);
                break;
            case 10:
                TextLayoutResult textLayoutResult = (TextLayoutResult) obj;
                textLayoutResult.getClass();
                mutableState.setValue(textLayoutResult);
                break;
            case 11:
                IntSize intSize = (IntSize) obj;
                long j = intSize.packedValue;
                mutableState.setValue(intSize);
                break;
            case 12:
                ((Density) obj).getClass();
                break;
            case IMAGE_VALUE:
                String str = (String) obj;
                str.getClass();
                mutableState.setValue(str);
                break;
            case LINEAR_PROGRESS_INDICATOR_VALUE:
                String str2 = (String) obj;
                str2.getClass();
                mutableState.setValue(str2);
                break;
            case 15:
                String str3 = (String) obj;
                str3.getClass();
                mutableState.setValue(str3);
                break;
            case LAZY_VERTICAL_GRID_VALUE:
                String str4 = (String) obj;
                str4.getClass();
                mutableState.setValue(str4);
                break;
            case VERTICAL_GRID_ITEM_VALUE:
                String str5 = (String) obj;
                str5.getClass();
                mutableState.setValue(str5);
                break;
            case RADIO_GROUP_VALUE:
                String str6 = (String) obj;
                str6.getClass();
                mutableState.setValue(str6);
                break;
            case RADIO_BUTTON_VALUE:
                LazyListIntervalContent lazyListIntervalContent = (LazyListIntervalContent) obj;
                lazyListIntervalContent.getClass();
                LazyItemScope$CC.item$default(lazyListIntervalContent, null, new ComposableLambdaImpl(new WikiTopAppBarWithSearchKt$$ExternalSyntheticLambda6(mutableState, 1), true, -200171099), 3);
                LazyItemScope$CC.item$default(lazyListIntervalContent, null, new ComposableLambdaImpl(new WikiTopAppBarWithSearchKt$$ExternalSyntheticLambda6(mutableState, 2), true, 1887316508), 3);
                break;
            case RADIO_ROW_VALUE:
                String str7 = (String) obj;
                str7.getClass();
                mutableState.setValue(str7);
                break;
            case RADIO_COLUMN_VALUE:
                String str8 = (String) obj;
                str8.getClass();
                mutableState.setValue(str8);
                break;
            case SIZE_BOX_VALUE:
                String str9 = (String) obj;
                str9.getClass();
                mutableState.setValue(str9);
                break;
            case 23:
                String str10 = (String) obj;
                str10.getClass();
                mutableState.setValue(str10);
                break;
            case 24:
                ((LayoutCoordinates) obj).getClass();
                mutableState.setValue(Boolean.TRUE);
                break;
            default:
                Boolean bool = (Boolean) obj;
                bool.getClass();
                mutableState.setValue(bool);
                break;
        }
        return unit;
    }
}
