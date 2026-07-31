package androidx.compose.foundation.text.contextmenu.modifier;

import androidx.camera.camera2.impl.TorchControl$$ExternalSyntheticLambda1;
import androidx.cardview.widget.CardView;
import androidx.collection.MutableObjectList;
import androidx.compose.foundation.text.CoreTextFieldKt$$ExternalSyntheticLambda7;
import androidx.compose.foundation.text.contextmenu.builder.TextContextMenuBuilderScope;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuComponent;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuData;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuSeparator;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager$contextMenuAreaModifier$3;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager$cut$1;
import androidx.compose.runtime.GapComposer$$ExternalSyntheticLambda3;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.DelegatableNode;
import androidx.compose.ui.node.HitTestResultKt;
import androidx.datastore.core.DataStoreImpl$doWithWriteFileLock$2;
import androidx.room.InvalidationTracker$implementation$1;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594 */
/* loaded from: classes.dex */
public abstract class TextContextMenuModifierKt {
    public static final Modifier addTextContextMenuComponentsWithContext(Modifier modifier, GapComposer$$ExternalSyntheticLambda3 gapComposer$$ExternalSyntheticLambda3) {
        return modifier.then(new AddTextContextMenuDataComponentsWithContextElement(gapComposer$$ExternalSyntheticLambda3));
    }

    public static final TextContextMenuData collectTextContextMenuData(DelegatableNode delegatableNode) {
        TextContextMenuSeparator textContextMenuSeparator;
        TextContextMenuBuilderScope textContextMenuBuilderScope = new TextContextMenuBuilderScope();
        HitTestResultKt.traverseAncestors(delegatableNode, TextContextMenuDataTraverseKey.INSTANCE, new TorchControl$$ExternalSyntheticLambda1(new TorchControl$$ExternalSyntheticLambda1(25, textContextMenuBuilderScope), new InvalidationTracker$implementation$1(1, textContextMenuBuilderScope, TextContextMenuBuilderScope.class, "addFilter", "addFilter$foundation(Lkotlin/jvm/functions/Function1;)V", 0, 6)));
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

    public static final Modifier showTextContextMenuOnSecondaryClick(TextFieldSelectionManager$cut$1 textFieldSelectionManager$cut$1) {
        return new TextContextMenuGestureElement(textFieldSelectionManager$cut$1);
    }

    public static final Modifier textContextMenuToolbarHandler(Modifier modifier, CardView.AnonymousClass1 anonymousClass1, DataStoreImpl$doWithWriteFileLock$2 dataStoreImpl$doWithWriteFileLock$2, TextFieldSelectionManager$contextMenuAreaModifier$3 textFieldSelectionManager$contextMenuAreaModifier$3, CoreTextFieldKt$$ExternalSyntheticLambda7 coreTextFieldKt$$ExternalSyntheticLambda7) {
        return modifier.then(new TextContextMenuToolbarHandlerElement(anonymousClass1, dataStoreImpl$doWithWriteFileLock$2, textFieldSelectionManager$contextMenuAreaModifier$3, coreTextFieldKt$$ExternalSyntheticLambda7));
    }
}
