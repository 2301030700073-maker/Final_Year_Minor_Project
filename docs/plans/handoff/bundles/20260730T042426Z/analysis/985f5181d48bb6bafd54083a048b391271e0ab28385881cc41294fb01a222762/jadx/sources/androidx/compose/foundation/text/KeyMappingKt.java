package androidx.compose.foundation.text;

import android.view.KeyEvent;
import androidx.compose.ui.input.key.Key;
import androidx.compose.ui.input.key.KeyEvent_androidKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.PropertyReference1Impl;

/* compiled from: KeyMapping.kt */
/* loaded from: classes.dex */
public abstract class KeyMappingKt {
    private static final KeyMapping defaultKeyMapping;

    public static final KeyMapping commonKeyMapping(final Function1 function1) {
        return new KeyMapping() { // from class: androidx.compose.foundation.text.KeyMappingKt$commonKeyMapping$1
            @Override // androidx.compose.foundation.text.KeyMapping
            /* renamed from: map-ZmokQxo */
            public KeyCommand mo393mapZmokQxo(KeyEvent keyEvent) {
                if (((Boolean) Function1.this.invoke(androidx.compose.ui.input.key.KeyEvent.m1623boximpl(keyEvent))).booleanValue() && KeyEvent_androidKt.m1639isShiftPressedZmokQxo(keyEvent)) {
                    if (Key.m1607equalsimpl0(KeyEvent_androidKt.m1634getKeyZmokQxo(keyEvent), MappedKeys.INSTANCE.m435getZEK5gGoQ())) {
                        return KeyCommand.REDO;
                    }
                    return null;
                }
                if (((Boolean) Function1.this.invoke(androidx.compose.ui.input.key.KeyEvent.m1623boximpl(keyEvent))).booleanValue()) {
                    long m1634getKeyZmokQxo = KeyEvent_androidKt.m1634getKeyZmokQxo(keyEvent);
                    MappedKeys mappedKeys = MappedKeys.INSTANCE;
                    if (Key.m1607equalsimpl0(m1634getKeyZmokQxo, mappedKeys.m415getCEK5gGoQ()) ? true : Key.m1607equalsimpl0(m1634getKeyZmokQxo, mappedKeys.m425getInsertEK5gGoQ())) {
                        return KeyCommand.COPY;
                    }
                    if (Key.m1607equalsimpl0(m1634getKeyZmokQxo, mappedKeys.m432getVEK5gGoQ())) {
                        return KeyCommand.PASTE;
                    }
                    if (Key.m1607equalsimpl0(m1634getKeyZmokQxo, mappedKeys.m433getXEK5gGoQ())) {
                        return KeyCommand.CUT;
                    }
                    if (Key.m1607equalsimpl0(m1634getKeyZmokQxo, mappedKeys.m412getAEK5gGoQ())) {
                        return KeyCommand.SELECT_ALL;
                    }
                    if (Key.m1607equalsimpl0(m1634getKeyZmokQxo, mappedKeys.m434getYEK5gGoQ())) {
                        return KeyCommand.REDO;
                    }
                    if (Key.m1607equalsimpl0(m1634getKeyZmokQxo, mappedKeys.m435getZEK5gGoQ())) {
                        return KeyCommand.UNDO;
                    }
                    return null;
                }
                if (KeyEvent_androidKt.m1638isCtrlPressedZmokQxo(keyEvent)) {
                    return null;
                }
                if (KeyEvent_androidKt.m1639isShiftPressedZmokQxo(keyEvent)) {
                    long m1634getKeyZmokQxo2 = KeyEvent_androidKt.m1634getKeyZmokQxo(keyEvent);
                    MappedKeys mappedKeys2 = MappedKeys.INSTANCE;
                    if (Key.m1607equalsimpl0(m1634getKeyZmokQxo2, mappedKeys2.m420getDirectionLeftEK5gGoQ())) {
                        return KeyCommand.SELECT_LEFT_CHAR;
                    }
                    if (Key.m1607equalsimpl0(m1634getKeyZmokQxo2, mappedKeys2.m421getDirectionRightEK5gGoQ())) {
                        return KeyCommand.SELECT_RIGHT_CHAR;
                    }
                    if (Key.m1607equalsimpl0(m1634getKeyZmokQxo2, mappedKeys2.m422getDirectionUpEK5gGoQ())) {
                        return KeyCommand.SELECT_UP;
                    }
                    if (Key.m1607equalsimpl0(m1634getKeyZmokQxo2, mappedKeys2.m419getDirectionDownEK5gGoQ())) {
                        return KeyCommand.SELECT_DOWN;
                    }
                    if (Key.m1607equalsimpl0(m1634getKeyZmokQxo2, mappedKeys2.m429getPageUpEK5gGoQ())) {
                        return KeyCommand.SELECT_PAGE_UP;
                    }
                    if (Key.m1607equalsimpl0(m1634getKeyZmokQxo2, mappedKeys2.m428getPageDownEK5gGoQ())) {
                        return KeyCommand.SELECT_PAGE_DOWN;
                    }
                    if (Key.m1607equalsimpl0(m1634getKeyZmokQxo2, mappedKeys2.m427getMoveHomeEK5gGoQ())) {
                        return KeyCommand.SELECT_LINE_START;
                    }
                    if (Key.m1607equalsimpl0(m1634getKeyZmokQxo2, mappedKeys2.m426getMoveEndEK5gGoQ())) {
                        return KeyCommand.SELECT_LINE_END;
                    }
                    if (Key.m1607equalsimpl0(m1634getKeyZmokQxo2, mappedKeys2.m425getInsertEK5gGoQ())) {
                        return KeyCommand.PASTE;
                    }
                    return null;
                }
                long m1634getKeyZmokQxo3 = KeyEvent_androidKt.m1634getKeyZmokQxo(keyEvent);
                MappedKeys mappedKeys3 = MappedKeys.INSTANCE;
                if (Key.m1607equalsimpl0(m1634getKeyZmokQxo3, mappedKeys3.m420getDirectionLeftEK5gGoQ())) {
                    return KeyCommand.LEFT_CHAR;
                }
                if (Key.m1607equalsimpl0(m1634getKeyZmokQxo3, mappedKeys3.m421getDirectionRightEK5gGoQ())) {
                    return KeyCommand.RIGHT_CHAR;
                }
                if (Key.m1607equalsimpl0(m1634getKeyZmokQxo3, mappedKeys3.m422getDirectionUpEK5gGoQ())) {
                    return KeyCommand.UP;
                }
                if (Key.m1607equalsimpl0(m1634getKeyZmokQxo3, mappedKeys3.m419getDirectionDownEK5gGoQ())) {
                    return KeyCommand.DOWN;
                }
                if (Key.m1607equalsimpl0(m1634getKeyZmokQxo3, mappedKeys3.m429getPageUpEK5gGoQ())) {
                    return KeyCommand.PAGE_UP;
                }
                if (Key.m1607equalsimpl0(m1634getKeyZmokQxo3, mappedKeys3.m428getPageDownEK5gGoQ())) {
                    return KeyCommand.PAGE_DOWN;
                }
                if (Key.m1607equalsimpl0(m1634getKeyZmokQxo3, mappedKeys3.m427getMoveHomeEK5gGoQ())) {
                    return KeyCommand.LINE_START;
                }
                if (Key.m1607equalsimpl0(m1634getKeyZmokQxo3, mappedKeys3.m426getMoveEndEK5gGoQ())) {
                    return KeyCommand.LINE_END;
                }
                if (Key.m1607equalsimpl0(m1634getKeyZmokQxo3, mappedKeys3.m423getEnterEK5gGoQ())) {
                    return KeyCommand.NEW_LINE;
                }
                if (Key.m1607equalsimpl0(m1634getKeyZmokQxo3, mappedKeys3.m414getBackspaceEK5gGoQ())) {
                    return KeyCommand.DELETE_PREV_CHAR;
                }
                if (Key.m1607equalsimpl0(m1634getKeyZmokQxo3, mappedKeys3.m418getDeleteEK5gGoQ())) {
                    return KeyCommand.DELETE_NEXT_CHAR;
                }
                if (Key.m1607equalsimpl0(m1634getKeyZmokQxo3, mappedKeys3.m430getPasteEK5gGoQ())) {
                    return KeyCommand.PASTE;
                }
                if (Key.m1607equalsimpl0(m1634getKeyZmokQxo3, mappedKeys3.m417getCutEK5gGoQ())) {
                    return KeyCommand.CUT;
                }
                if (Key.m1607equalsimpl0(m1634getKeyZmokQxo3, mappedKeys3.m416getCopyEK5gGoQ())) {
                    return KeyCommand.COPY;
                }
                if (Key.m1607equalsimpl0(m1634getKeyZmokQxo3, mappedKeys3.m431getTabEK5gGoQ())) {
                    return KeyCommand.TAB;
                }
                return null;
            }
        };
    }

    public static final KeyMapping getDefaultKeyMapping() {
        return defaultKeyMapping;
    }

    static {
        final KeyMapping commonKeyMapping = commonKeyMapping(new PropertyReference1Impl() { // from class: androidx.compose.foundation.text.KeyMappingKt$defaultKeyMapping$1
            @Override // kotlin.jvm.internal.PropertyReference1Impl, kotlin.reflect.KProperty1
            public Object get(Object obj) {
                return Boolean.valueOf(KeyEvent_androidKt.m1638isCtrlPressedZmokQxo(((androidx.compose.ui.input.key.KeyEvent) obj).m1628unboximpl()));
            }
        });
        defaultKeyMapping = new KeyMapping() { // from class: androidx.compose.foundation.text.KeyMappingKt$defaultKeyMapping$2$1
            @Override // androidx.compose.foundation.text.KeyMapping
            /* renamed from: map-ZmokQxo */
            public KeyCommand mo393mapZmokQxo(KeyEvent keyEvent) {
                KeyCommand keyCommand = null;
                if (KeyEvent_androidKt.m1639isShiftPressedZmokQxo(keyEvent) && KeyEvent_androidKt.m1638isCtrlPressedZmokQxo(keyEvent)) {
                    long m1634getKeyZmokQxo = KeyEvent_androidKt.m1634getKeyZmokQxo(keyEvent);
                    MappedKeys mappedKeys = MappedKeys.INSTANCE;
                    if (Key.m1607equalsimpl0(m1634getKeyZmokQxo, mappedKeys.m420getDirectionLeftEK5gGoQ())) {
                        keyCommand = KeyCommand.SELECT_LEFT_WORD;
                    } else if (Key.m1607equalsimpl0(m1634getKeyZmokQxo, mappedKeys.m421getDirectionRightEK5gGoQ())) {
                        keyCommand = KeyCommand.SELECT_RIGHT_WORD;
                    } else if (Key.m1607equalsimpl0(m1634getKeyZmokQxo, mappedKeys.m422getDirectionUpEK5gGoQ())) {
                        keyCommand = KeyCommand.SELECT_PREV_PARAGRAPH;
                    } else if (Key.m1607equalsimpl0(m1634getKeyZmokQxo, mappedKeys.m419getDirectionDownEK5gGoQ())) {
                        keyCommand = KeyCommand.SELECT_NEXT_PARAGRAPH;
                    }
                } else if (KeyEvent_androidKt.m1638isCtrlPressedZmokQxo(keyEvent)) {
                    long m1634getKeyZmokQxo2 = KeyEvent_androidKt.m1634getKeyZmokQxo(keyEvent);
                    MappedKeys mappedKeys2 = MappedKeys.INSTANCE;
                    if (Key.m1607equalsimpl0(m1634getKeyZmokQxo2, mappedKeys2.m420getDirectionLeftEK5gGoQ())) {
                        keyCommand = KeyCommand.LEFT_WORD;
                    } else if (Key.m1607equalsimpl0(m1634getKeyZmokQxo2, mappedKeys2.m421getDirectionRightEK5gGoQ())) {
                        keyCommand = KeyCommand.RIGHT_WORD;
                    } else if (Key.m1607equalsimpl0(m1634getKeyZmokQxo2, mappedKeys2.m422getDirectionUpEK5gGoQ())) {
                        keyCommand = KeyCommand.PREV_PARAGRAPH;
                    } else if (Key.m1607equalsimpl0(m1634getKeyZmokQxo2, mappedKeys2.m419getDirectionDownEK5gGoQ())) {
                        keyCommand = KeyCommand.NEXT_PARAGRAPH;
                    } else if (Key.m1607equalsimpl0(m1634getKeyZmokQxo2, mappedKeys2.m424getHEK5gGoQ())) {
                        keyCommand = KeyCommand.DELETE_PREV_CHAR;
                    } else if (Key.m1607equalsimpl0(m1634getKeyZmokQxo2, mappedKeys2.m418getDeleteEK5gGoQ())) {
                        keyCommand = KeyCommand.DELETE_NEXT_WORD;
                    } else if (Key.m1607equalsimpl0(m1634getKeyZmokQxo2, mappedKeys2.m414getBackspaceEK5gGoQ())) {
                        keyCommand = KeyCommand.DELETE_PREV_WORD;
                    } else if (Key.m1607equalsimpl0(m1634getKeyZmokQxo2, mappedKeys2.m413getBackslashEK5gGoQ())) {
                        keyCommand = KeyCommand.DESELECT;
                    }
                } else if (KeyEvent_androidKt.m1639isShiftPressedZmokQxo(keyEvent)) {
                    long m1634getKeyZmokQxo3 = KeyEvent_androidKt.m1634getKeyZmokQxo(keyEvent);
                    MappedKeys mappedKeys3 = MappedKeys.INSTANCE;
                    if (Key.m1607equalsimpl0(m1634getKeyZmokQxo3, mappedKeys3.m427getMoveHomeEK5gGoQ())) {
                        keyCommand = KeyCommand.SELECT_LINE_LEFT;
                    } else if (Key.m1607equalsimpl0(m1634getKeyZmokQxo3, mappedKeys3.m426getMoveEndEK5gGoQ())) {
                        keyCommand = KeyCommand.SELECT_LINE_RIGHT;
                    }
                } else if (KeyEvent_androidKt.m1637isAltPressedZmokQxo(keyEvent)) {
                    long m1634getKeyZmokQxo4 = KeyEvent_androidKt.m1634getKeyZmokQxo(keyEvent);
                    MappedKeys mappedKeys4 = MappedKeys.INSTANCE;
                    if (Key.m1607equalsimpl0(m1634getKeyZmokQxo4, mappedKeys4.m414getBackspaceEK5gGoQ())) {
                        keyCommand = KeyCommand.DELETE_FROM_LINE_START;
                    } else if (Key.m1607equalsimpl0(m1634getKeyZmokQxo4, mappedKeys4.m418getDeleteEK5gGoQ())) {
                        keyCommand = KeyCommand.DELETE_TO_LINE_END;
                    }
                }
                return keyCommand == null ? KeyMapping.this.mo393mapZmokQxo(keyEvent) : keyCommand;
            }
        };
    }
}
