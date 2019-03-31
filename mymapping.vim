call NERDTreeAddKeyMap({
        \ 'key': 'b',
        \ 'callback': 'NERDTreeBookmarkThis',
        \ 'quickhelpText': 'Bookmark this node',
        \ 'scope': 'Node' })


function! NERDTreeBookmarkThis(node)
    let currentNode = a:node
    if currentNode != {}
        let name = currentNode.path.getLastPathComponent(0)
        try
            call currentNode.bookmark(name)
            call b:NERDTree.render()
        catch /^NERDTree.IllegalBookmarkNameError/
            call nerdtree#echo("bookmark names must not contain spaces")
        endtry
    else
        call nerdtree#echo("select a node first")
    endif
endfunction

call NERDTreeAddKeyMap({
        \ 'key': 'N',
        \ 'callback': 'NERDTreeAddNodeHandler',
        \ 'quickhelpText': '',
        \ 'scope': 'Node' })

function! NERDTreeAddNodeHandler(...)
    call NERDTreeAddNode()
endfunction
