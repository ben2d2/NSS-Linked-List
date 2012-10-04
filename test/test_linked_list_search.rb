require 'test/unit'
require 'linked_list'

class LinkedListItemTest < Test::Unit::TestCase

    def test_01_add_item_get_item
        ll = LinkedList.new
        ll.add_item("foo")
        assert_equal("foo", ll.get(0))
    end
    
    def test_02_add_multiple_items_get_item
        ll = LinkedList.new
        ll.add_item("foo")
        ll.add_item("bar")
        ll.add_item("grille")
        assert_equal("grille", ll.get(2))
    end

end