package androidx.compose.foundation.text.contextmenu.modifier;

import androidx.cardview.widget.CardView;
import androidx.collection.MutableObjectList;
import androidx.compose.foundation.text.contextmenu.builder.TextContextMenuBuilderScope;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuComponent;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuData;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuSeparator;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager$contextMenuAreaModifier$3;
import androidx.compose.material3.AppBarKt$$ExternalSyntheticLambda11;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.RulerKt;
import androidx.compose.ui.node.DelegatableNode;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.room.InvalidationTracker$implementation$1;
import coil3.util.UtilsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e */
/* loaded from: classes.dex */
public abstract class TextContextMenuModifierKt {
    public static final Modifier addTextContextMenuComponentsWithContext(Modifier modifier, Function2 function2) {
        return modifier.then(new AddTextContextMenuDataComponentsWithContextElement(function2));
    }

    public static final TextContextMenuData collectTextContextMenuData(DelegatableNode delegatableNode) {
        TextContextMenuSeparator textContextMenuSeparator;
        TextContextMenuBuilderScope textContextMenuBuilderScope = new TextContextMenuBuilderScope();
        HitTestResultKt.traverseAncestors(delegatableNode, TextContextMenuDataTraverseKey.INSTANCE, new AppBarKt$$ExternalSyntheticLambda11(24, new AppBarKt$$ExternalSyntheticLambda11(23, textContextMenuBuilderScope), new InvalidationTracker$implementation$1(1, textContextMenuBuilderScope, TextContextMenuBuilderScope.class, "addFilter", "addFilter$foundation(Lkotlin/jvm/functions/Function1;)V", 0, 4)));
        MutableObjectList mutableObjectList = new MutableObjectList();
        MutableObjectList mutableObjectList2 = textContextMenuBuilderScope.components;
        Object[] objArr = mutableObjectList2.content;
        int i = mutableObjectList2._size;
        int i2 = 0;
        boolean z = true;
        TextContextMenuComponent textContextMenuComponent = null;
        while (true) {
            textContextMenuSeparator = TextContextMenuSeparator.INSTANCE;
            if (i2 >= i) {
                break;
            }
            TextContextMenuComponent textContextMenuComponent2 = (TextContextMenuComponent) objArr[i2];
            if (!z || textContextMenuComponent2 != textContextMenuSeparator) {
                if (textContextMenuComponent2 != textContextMenuSeparator || textContextMenuComponent != textContextMenuSeparator) {
                    if (textContextMenuComponent2 != textContextMenuSeparator) {
                        MutableObjectList mutableObjectList3 = textContextMenuBuilderScope.filters;
                        Object[] objArr2 = mutableObjectList3.content;
                        int i3 = mutableObjectList3._size;
                        for (int i4 = 0; i4 < i3; i4++) {
                            if (((Boolean) ((Function1) objArr2[i4]).invoke(textContextMenuComponent2)).booleanValue()) {
                            }
                        }
                    }
                    mutableObjectList.add(textContextMenuComponent2);
                    z = false;
                    textContextMenuComponent = textContextMenuComponent2;
                }
                z = false;
                break;
            }
            i2++;
        }
        if (((TextContextMenuComponent) (mutableObjectList.isEmpty() ? null : mutableObjectList.content[mutableObjectList._size - 1])) == textContextMenuSeparator) {
            mutableObjectList.removeAt(mutableObjectList._size - 1);
        }
        MutableObjectList.ObjectListMutableList objectListMutableList = mutableObjectList.list;
        if (objectListMutableList == null) {
            objectListMutableList = new MutableObjectList.ObjectListMutableList(0, mutableObjectList);
            mutableObjectList.list = objectListMutableList;
        }
        return new TextContextMenuData(objectListMutableList);
    }

    public static final Modifier showTextContextMenuOnSecondaryClick(Function2 function2) {
        return new TextContextMenuGestureElement(function2);
    }

    public static final Modifier textContextMenuToolbarHandler(Modifier modifier, CardView.AnonymousClass1 anonymousClass1, Function1 function1, TextFieldSelectionManager$contextMenuAreaModifier$3 textFieldSelectionManager$contextMenuAreaModifier$3, Function1 function12) {
        return modifier.then(new TextContextMenuToolbarHandlerElement(anonymousClass1, function1, textFieldSelectionManager$contextMenuAreaModifier$3, function12));
    }

    public static final Rect translateRootToDestination(Rect rect, LayoutCoordinates layoutCoordinates, LayoutCoordinates layoutCoordinates2) {
        if (!layoutCoordinates.isAttached() || !layoutCoordinates2.isAttached()) {
            return Rect.Zero;
        }
        return UtilsKt.m793Recttz77jQw(layoutCoordinates2.mo518localPositionOfR5De75A(RulerKt.findRootCoordinates(layoutCoordinates), rect.m392getTopLeftF1C5BW0()), rect.m391getSizeNHjbRc());
    }
}
